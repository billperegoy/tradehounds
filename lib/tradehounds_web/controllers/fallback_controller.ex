defmodule TradehoundsWeb.FallbackController do
  @moduledoc """
  Translates controller action results into valid `Plug.Conn` responses.

  See `Phoenix.Controller.action_fallback/1` for more details.
  """
  use TradehoundsWeb, :controller

  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> render(TradehoundsWeb.ChangesetView, "error.json", changeset: changeset)
  end

  ## FIXXME - This makes dialyzer fail
  # def call(conn, {:error, :not_found}) do
  #  conn
  #  |> put_status(:not_found)
  #  |> render(TradehoundsWeb.ErrorView, :"404")
  # end
end
