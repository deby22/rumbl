defmodule Rumbl.Accounts do
  @moduledoc """
  The accounts context.
  """

  alias Rumbl.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Dawid", username: "ddeby"},
      %User{id: "2", name: "Marcin", username: "yetem"},
      %User{id: "3", name: "Wojtek", username: "drizi"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
