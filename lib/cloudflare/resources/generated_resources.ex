defmodule Cloudflare.GeneratedResources do
  @moduledoc false
  @endpoint_line_regex ~r/\*\*[A-Z]+\*\s+`([^`]+)`/

  existing_modules =
    __DIR__
    |> Path.join("*.ex")
    |> Path.wildcard()
    |> Enum.reject(&String.ends_with?(&1, "generated_resources.ex"))
    |> Enum.map(&(Path.basename(&1, ".ex") |> Macro.camelize()))
    |> MapSet.new()

  endpoint_for = fn doc_path ->
    doc_path
    |> File.read!()
    |> then(fn body ->
      case Regex.run(@endpoint_line_regex, body, capture: :all_but_first) do
        [endpoint] ->
          endpoint
          |> String.trim_leading("/")
          |> String.replace(~r/\{([^}]+)\}/, ":\\1")

        _ ->
          doc_path
          |> Path.basename(".md")
          |> String.replace("_", "/")
      end
    end)
  end

  __DIR__
  |> Path.join("../../../priv/docs/*.md")
  |> Path.expand()
  |> Path.wildcard()
  |> Enum.each(fn doc_path ->
    name = Path.basename(doc_path, ".md")
    module_name = Macro.camelize(name)

    unless MapSet.member?(existing_modules, module_name) do
      endpoint = endpoint_for.(doc_path)

      Module.create(
        Module.concat(Cloudflare, module_name),
        quote do
          use Cloudflare.Doc, unquote(name)
          use Restlax.Resource, endpoint: unquote(endpoint)
        end,
        Macro.Env.location(__ENV__)
      )
    end
  end)
end
