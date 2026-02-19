defmodule Cloudflare.GeneratedResourcesTest do
  use ExUnit.Case

  test "generates missing resources from docs" do
    for resource_module <- [Cloudflare.WaitingRoom, Cloudflare.R2Bucket, Cloudflare.Webhooks] do
      assert Code.ensure_loaded?(resource_module)
      assert function_exported?(resource_module, :index, 1)
      assert {:docs_v1, _, _, _, _, _, _} = Code.fetch_docs(resource_module)
    end
  end
end
