defmodule TradehoundsWeb.HealthcheckView do
  use TradehoundsWeb, :view
  alias TradehoundsWeb.HealthcheckView

  def render("index.json", %{status: healthchecks}) do
    %{status: healthchecks}
  end
end
