defmodule TradehoundsApiWeb.Router do
  use TradehoundsApiWeb, :router
  @dialyzer {:nowarn_function, call: 2}

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", TradehoundsApiWeb do
    pipe_through(:api)

    scope "/v1" do
      resources("/healthcheck", HealthcheckController, only: [:index])
    end
  end
end
