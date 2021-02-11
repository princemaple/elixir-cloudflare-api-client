{:ok, doc} = "#{__DIR__}/cloudflare.txt" |> File.read!() |> Floki.parse_document()

doc =
  Floki.traverse_and_update(doc, fn
    {:comment, _} -> nil
    other -> other
  end)

menu = Floki.find(doc, ".menu-sidebar")
groups = Floki.find(menu, ".menu-sidebar > li")

doc = Floki.find(doc, ".api-section")

maybe_none = fn
  "" -> "None"
  other -> other
end

for group <- groups |> Enum.drop(1) do
  group_name =
    Floki.find(group, "a.open")
    |> Floki.text()
    |> String.trim()
    |> String.downcase()
    |> String.replace(~r/\s+/, "_")
    |> Macro.underscore()

  content =
    group
    |> Floki.find(~s|a[href^="#"]|)
    |> Floki.attribute("href")
    |> Task.async_stream(fn id ->
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
          |> maybe_none.()

        plans =
          section
          |> Floki.find(".available-plans .false")
          |> Floki.text(sep: " ")
          |> String.split()

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

        **Permission needed:** `#{permission || "None"}`

        Available in:

        #{plans |> Enum.map(&"* #{&1}") |> Enum.join("\n")}

        `#{method}` #{description}

        > #{http}
        """
      end
    end)
    |> Enum.map(fn {:ok, v} -> v end)
    |> Enum.reject(&is_nil/1)
    |> Enum.join("\n\n")

  File.write!("#{__DIR__}/docs/#{group_name}.md", content)
end
