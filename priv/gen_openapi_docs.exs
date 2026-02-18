Mix.install([
  {:req, "~> 0.3.0"},
  {:jason, "~> 1.4"}
])

defmodule UpdateDocs do
  def run do
    url = "https://raw.githubusercontent.com/cloudflare/api-schemas/main/openapi.json"
    IO.puts("Fetching OpenAPI spec from #{url}...")

    resp = Req.get!(url)

    spec =
      case resp.body do
        body when is_binary(body) -> Jason.decode!(body)
        body -> body
      end

    docs_dir = Path.join(__DIR__, "docs")
    File.mkdir_p!(docs_dir)

    # Group by tags
    paths = spec["paths"] || %{}

    grouped =
      Enum.reduce(paths, %{}, fn {path, methods}, acc ->
        Enum.reduce(methods, acc, fn {method, operation}, acc ->
          if not is_map(operation) do
            IO.inspect(operation, label: "Invalid operation for #{method} #{path}")
            acc
          else
            tags = Map.get(operation, "tags", ["Start"])
            # Primary tag
            tag = List.first(tags)

            entry = %{
              path: path,
              method: String.upcase(method),
              summary: operation["summary"],
              description: operation["description"],
              operation_id: operation["operationId"]
            }

            Map.update(acc, tag, [entry], fn existing -> [entry | existing] end)
          end
        end)
      end)

    IO.puts("Generating documentation files...")

    Enum.each(grouped, fn {tag, operations} ->
      filename =
        tag
        |> String.downcase()
        |> String.replace(~r/[^a-z0-9]+/, "_")
        |> String.trim("_")

      filepath = Path.join(docs_dir, "#{filename}.md")

      content = generate_markdown(tag, operations)
      File.write!(filepath, content)
      IO.puts("Generated #{filename}.md")
    end)

    IO.puts("Documentation update complete.")
  end

  defp generate_markdown(tag, operations) do
    ops_content =
      operations
      |> Enum.sort_by(& &1.path)
      |> Enum.map(&format_operation/1)
      |> Enum.join("\n\n")

    """
    # #{tag}

    #{ops_content}
    """
  end

  defp format_operation(op) do
    """
    ## #{op.summary}

    **#{op.method}** `#{op.path}`

    #{op.description}
    """
  end
end

UpdateDocs.run()
