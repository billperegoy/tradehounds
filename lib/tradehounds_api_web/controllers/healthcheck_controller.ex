defmodule TradehoundsApiWeb.HealthcheckController do
  use TradehoundsApiWeb, :controller

  alias TradehoundsApi.Admin

  action_fallback(TradehoundsApiWeb.FallbackController)

  def index(conn, _params) do
    healthchecks = Admin.list_healthchecks()
    render(conn, "index.json", healthchecks)
  end
end
