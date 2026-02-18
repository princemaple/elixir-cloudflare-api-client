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
              operation_id: operation["operationId"],
              responses: operation["responses"]
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

      content = generate_markdown(tag, operations, spec)
      File.write!(filepath, content)
      IO.puts("Generated #{filename}.md")
    end)

    IO.puts("Documentation update complete.")
  end

  defp generate_markdown(tag, operations, spec) do
    ops_content =
      operations
      |> Enum.sort_by(& &1.path)
      |> Enum.map(&format_operation(&1, spec))
      |> Enum.join("\n\n")

    """
    # #{tag}

    #{ops_content}
    """
  end

  defp format_operation(op, spec) do
    """
    ## #{op.summary}

    **#{op.method}** `#{op.path}`

    #{op.description}

    ### Responses

    #{format_responses(op.responses, spec)}
    """
  end

  defp format_responses(responses, spec) do
    responses
    |> Enum.sort()
    |> Enum.map(fn {status, response} ->
      schema = get_in(response, ["content", "application/json", "schema"])
      desc = response["description"]
      success? = String.starts_with?(status, "2")

      note = if success?, do: "\n> Data is at `body[\"result\"]`\n", else: ""

      """
      #### #{status} #{desc}
      #{note}
      ```json
      #{format_schema(schema, spec, success?)}
      ```
      """
    end)
    |> Enum.join("\n")
  end

  defp format_schema(nil, _, _), do: ""

  defp format_schema(schema, spec, success?) do
    resolved = resolve_schema(schema, spec, 0)

    # For success responses, extract the inner `result` property (Cloudflare API pattern).
    # For error responses, show the full error object (errors, messages, success fields).
    target_schema =
      if success? and is_map(resolved) and Map.has_key?(resolved, "properties") and
           Map.has_key?(resolved["properties"], "result") do
        resolve_schema(resolved["properties"]["result"], spec, 0)
      else
        resolved
      end

    example = schema_to_example(target_schema, spec, 0)
    Jason.encode!(example, pretty: true)
  end

  @max_depth 5

  defp resolve_schema(_, _, depth) when depth > @max_depth, do: %{}

  defp resolve_schema(%{"$ref" => ref}, spec, depth) do
    path = String.replace(ref, "#/", "") |> String.split("/")
    result = get_in(spec, path)

    if is_nil(result) do
      %{}
    else
      resolve_schema(result, spec, depth + 1)
    end
  end

  defp resolve_schema(%{"allOf" => schemas}, spec, depth) do
    Enum.reduce(schemas, %{}, fn schema, acc ->
      resolved = resolve_schema(schema, spec, depth + 1)

      Map.merge(acc, resolved, fn _k, v1, v2 ->
        if is_map(v1) and is_map(v2) do
          Map.merge(v1, v2)
        else
          v2
        end
      end)
    end)
  end

  defp resolve_schema(schema, _, _), do: schema

  defp schema_to_example(_, _, depth) when depth > @max_depth, do: nil

  defp schema_to_example(%{"type" => "object", "properties" => props}, spec, depth) do
    Enum.into(props, %{}, fn {k, v} -> {k, schema_to_example(v, spec, depth + 1)} end)
  end

  defp schema_to_example(%{"type" => "object"}, _, _), do: %{}

  defp schema_to_example(%{"type" => "array", "items" => items}, spec, depth) do
    [schema_to_example(items, spec, depth + 1)]
  end

  defp schema_to_example(%{"type" => "string"}, _, _), do: "*string*"
  defp schema_to_example(%{"type" => "integer"}, _, _), do: "*integer*"
  defp schema_to_example(%{"type" => "boolean"}, _, _), do: "*boolean*"
  defp schema_to_example(%{"type" => "number"}, _, _), do: "*number*"

  defp schema_to_example(schema, spec, depth) when is_map(schema) do
    if Map.has_key?(schema, "$ref") or Map.has_key?(schema, "allOf") do
      schema_to_example(resolve_schema(schema, spec, depth), spec, depth + 1)
    else
      nil
    end
  end

  defp schema_to_example(_, _, _), do: nil
end

UpdateDocs.run()
