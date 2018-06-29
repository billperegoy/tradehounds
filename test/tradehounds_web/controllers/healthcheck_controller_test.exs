defmodule TradehoundsWeb.HealthcheckControllerTest do
  use TradehoundsWeb.ConnCase

  alias Tradehounds.Admin
  alias Tradehounds.Admin.Healthcheck

  @create_attrs %{}
  @update_attrs %{}
  @invalid_attrs %{}

  def fixture(:healthcheck) do
    {:ok, healthcheck} = Admin.create_healthcheck(@create_attrs)
    healthcheck
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all healthchecks", %{conn: conn} do
      conn = get(conn, healthcheck_path(conn, :index))
      assert json_response(conn, 200)["status"] == "ok"
    end
  end
end
