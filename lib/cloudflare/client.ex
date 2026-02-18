defmodule Cloudflare.Client do
  @base_url "https://api.cloudflare.com/client/v4"

  def get(path, opts \\ []), do: request(:get, path, nil, opts, false)
  def get!(path, opts \\ []), do: request(:get, path, nil, opts, true)
  def delete(path, opts \\ []), do: request(:delete, path, nil, opts, false)
  def delete!(path, opts \\ []), do: request(:delete, path, nil, opts, true)
  def head(path, opts \\ []), do: request(:head, path, nil, opts, false)
  def head!(path, opts \\ []), do: request(:head, path, nil, opts, true)
  def post(path, body, opts \\ []), do: request(:post, path, body, opts, false)
  def post!(path, body, opts \\ []), do: request(:post, path, body, opts, true)
  def put(path, body, opts \\ []), do: request(:put, path, body, opts, false)
  def put!(path, body, opts \\ []), do: request(:put, path, body, opts, true)
  def patch(path, body, opts \\ []), do: request(:patch, path, body, opts, false)
  def patch!(path, body, opts \\ []), do: request(:patch, path, body, opts, true)

  def __restlax_config__ do
    %{base_url: @base_url, encoding: :json, headers: [], req_options: []}
  end

  def init do
    :persistent_term.put({:cloudflare, :client}, Cloudflare.Client)
  end

  defp request(method, path, body, opts, bang) do
    auth_headers = Cloudflare.Auth.auth_headers(opts)
    opts = opts |> Keyword.drop([:auth_token, :auth_email, :auth_key]) |> put_auth_headers(auth_headers)
    Restlax.Client.request(__MODULE__, method, path, body, opts, bang)
  end

  defp put_auth_headers(opts, auth_headers) do
    case auth_headers do
      [] -> opts
      _ -> Keyword.update(opts, :headers, auth_headers, &(auth_headers ++ &1))
    end
  end
end
