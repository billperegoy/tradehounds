defmodule TradehoundsApiWeb.HealthcheckView do
  use TradehoundsApiWeb, :view

  def render("index.json", %{status: healthchecks}) do
    %{status: healthchecks}
  end
end
