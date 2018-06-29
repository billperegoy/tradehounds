defmodule Tradehounds.Admin do
  @moduledoc """
  The Admin context.
  """

  import Ecto.Query, warn: false

  alias Tradehounds.Admin.Healthcheck

  @doc """
  Returns the list of healthchecks.

  ## Examples

      iex> list_healthchecks()
      [%Healthcheck{}, ...]

  """
  def list_healthchecks do
    %{status: "ok"}
  end
end
