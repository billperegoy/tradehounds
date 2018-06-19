defmodule TradehoundsWeb.Router do
  use TradehoundsWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", TradehoundsWeb do
    pipe_through :api
  end
end
