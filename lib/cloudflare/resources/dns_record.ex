defmodule Cloudflare.DnsRecord do
  @moduledoc Cloudflare.docs("dns_records_for_a_zone")

  use Restlax.Resource, endpoint: "zones/:zone_id/dns_records"

  def import(data, opts \\ []) do
    client(opts).post(path_for(nil, opts), data, opts)
  end

  def export(opts \\ []) do
    client(opts).post(path_for(nil, opts), opts)
  end
end
