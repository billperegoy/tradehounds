defmodule TradehoundsWeb.HealthcheckView do
  use TradehoundsWeb, :view

  def render("index.json", %{status: healthchecks}) do
    %{status: healthchecks}
  end
end
