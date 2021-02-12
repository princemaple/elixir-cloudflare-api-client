defmodule Cloudflare.Doc do
  @moduledoc false

  defmacro __using__(doc_params) do
    {name, banner} =
      case doc_params do
        name when is_binary(name) ->
          {name, ""}

        [name: name, banner: banner] ->
          {name, banner <> "\n\n"}
      end

    file_path = Path.join("priv/docs", name <> ".md")

    doc =
      file_path
      |> File.read!()
      |> String.replace(~r/^(#+)/m, "\\1#")

    doc = banner <> doc

    quote do
      @external_resource unquote(file_path)

      @moduledoc unquote(doc)
    end
  end
end
