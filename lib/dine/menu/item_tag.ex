defmodule Dine.Menu.ItemTag do
  use Ecto.Schema
  import Ecto.Changeset
  alias Dine.Menu.ItemTag

  schema "item_tags" do
    field :description
    field :name, :string, null: false

    many_to_many :items, Dine.Menu.Item, join_through: "items_taggings"

    timestamps()
  end

  def changeset(%ItemTag{} = item_tag, attrs) do
    item_tag
    |> cast(attrs, [:name, :description])
    |> validate_required([:name])
  end
end
