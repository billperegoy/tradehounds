defmodule TradehoundsApi.AdminTest do
  use TradehoundsApi.DataCase

  alias TradehoundsApi.Admin

  describe "healthchecks" do
    test "list_healthchecks/0 returns all healthchecks" do
      assert Admin.list_healthchecks() == %{status: "ok"}
    end
  end
end
