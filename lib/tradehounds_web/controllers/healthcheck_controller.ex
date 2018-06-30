defmodule TradehoundsWeb.HealthcheckController do
  use TradehoundsWeb, :controller

  alias Tradehounds.Admin

  action_fallback(TradehoundsWeb.FallbackController)

  def index(conn, _params) do
    healthchecks = Admin.list_healthchecks()
    render(conn, "index.json", healthchecks)
  end
end
