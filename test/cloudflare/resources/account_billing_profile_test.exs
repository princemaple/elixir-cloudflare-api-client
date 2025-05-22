defmodule Cloudflare.AccountBillingProfileTest do
  use ExUnit.Case, async: true

  alias Cloudflare.AccountBillingProfile

  doctest AccountBillingProfile

  test "module is defined" do
    assert is_list(AccountBillingProfile.__info__(:functions))
  end

  test "show/1 function is defined" do
    assert function_exported?(AccountBillingProfile, :show, 1)
  end
end
