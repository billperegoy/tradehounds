defmodule TradehoundsWeb.HealthcheckController do
  use TradehoundsWeb, :controller

  alias Tradehounds.Admin
  alias Tradehounds.Admin.Healthcheck

  action_fallback(TradehoundsWeb.FallbackController)

  def index(conn, _params) do
    healthchecks = Admin.list_healthchecks()
    render(conn, "index.json", healthchecks)
  end
end
