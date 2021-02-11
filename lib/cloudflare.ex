defmodule Cloudflare do
  @moduledoc File.read!("#{__DIR__}/../README.md") |> String.replace(~r/^# .+?\n/, "")

  @doc false
  def docs(path) do
    "#{__DIR__}/../priv/docs"
    |> Path.join(path <> ".md")
    |> File.read!()
    |> String.replace(~r/^(#+)/m, "\\1#")
  end
end
