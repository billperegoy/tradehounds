defmodule TradehoundsWeb.Router do
  use TradehoundsWeb, :router
  @dialyzer {:nowarn_function, call: 2}

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", TradehoundsWeb do
    pipe_through(:api)

    scope "/v1" do
      resources("/healthcheck", HealthcheckController, only: [:index])
    end
  end
end
