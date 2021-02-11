{:ok, doc} = "#{__DIR__}/cloudflare.txt" |> File.read!() |> Floki.parse_document()

doc =
  Floki.traverse_and_update(doc, fn
    {:comment, _} -> nil
    other -> other
  end)

menu = Floki.find(doc, ".menu-sidebar")
groups = Floki.find(menu, ".menu-sidebar > li")

doc =
  doc
  |> Floki.find(".api-section")
  |> Floki.traverse_and_update(fn
    {node, attrs, children} ->
      {node,
       Enum.map(attrs, fn {k, v} ->
         {k, String.replace(v, "/", "_")}
       end), children}

    other ->
      other
  end)

convert_empty = fn
  "" -> "None"
  other -> other
end

for group <- groups |> Enum.drop(1) do
  group_name =
    Floki.find(group, "a.open")
    |> Floki.text()
    |> String.trim()

  group_description =
    doc
    |> Floki.find("h2:fl-contains(\"#{group_name}\") + h4")
    |> Enum.take(1)
    |> Floki.text()
    |> String.trim()

  filename =
    group_name
    |> String.downcase()
    |> String.replace(~r/\s+|\//, "_")
    |> Macro.underscore()

  content =
    group
    |> Floki.find(~s|a[href^="#"]|)
    |> Floki.attribute("href")
    |> Task.async_stream(fn id ->
      id = String.replace(id, "/", "_")
      section = Floki.find(doc, "#{id} + div")

      if section == [] do
        nil
      else
        method =
          section
          |> Floki.find(".label")
          |> Floki.text()

        title =
          section
          |> Floki.find("h3")
          |> Floki.text(deep: false)

        permission =
          section
          |> Floki.find("small")
          |> Floki.text()
          |> String.trim_leading("permission needed:")
          |> convert_empty.()

        plans =
          section
          |> Floki.find(".available-plans .false")
          |> Floki.text(sep: " ")
          |> String.split(" ", trim: true)
          |> Enum.map(&"* #{&1}")
          |> Enum.join("\n")

        description =
          section
          |> Floki.find("h3 + div p")
          |> Floki.text()

        http =
          section
          |> Floki.find("pre")
          |> Floki.text(sep: " ")

        """
        ## #{title}

        `#{method}` #{description}

        > #{http}

        **Permission needed:** `#{permission}`

        Available in:

        #{plans}
        """
      end
    end)
    |> Enum.map(fn {:ok, v} -> v end)
    |> Enum.reject(&is_nil/1)
    |> Enum.join("\n\n")

  File.write!(
    "#{__DIR__}/docs/#{filename}.md",
    """
    # #{group_name}

    #{group_description}

    #{content}
    """
  )
end
