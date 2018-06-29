defmodule Tradehounds.AdminTest do
  use Tradehounds.DataCase

  alias Tradehounds.Admin

  describe "healthchecks" do
    test "list_healthchecks/0 returns all healthchecks" do
      assert Admin.list_healthchecks() == %{status: "ok"}
    end
  end
end
