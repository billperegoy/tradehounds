defmodule TradehoundsWeb.HealthcheckControllerTest do
  use TradehoundsWeb.ConnCase

  alias Tradehounds.Admin

  @create_attrs %{}

  def fixture(:healthcheck) do
    {:ok, healthcheck} = Admin.create_healthcheck(@create_attrs)
    healthcheck
  end

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all healthchecks", %{conn: conn} do
      conn =
        conn
        |> get(healthcheck_path(conn, :index))
        |> doc(description: "Perform healthceck", operation_id: "list_healthchecks")

      assert json_response(conn, 200)["status"] == "ok"
    end
  end
end
