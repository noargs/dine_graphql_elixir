defmodule Dine.Menu.Item do
  use Ecto.Schema
  import Ecto.Changeset
  alias Dine.Menu.Item

  schema "items" do
    field :added_on, :date
    field :description, :string
    field :name, :string
    field :price, :decimal

    belongs_to :category, Dine.Menu.Category

    many_to_many :tags, Dine.Menu.ItemTag,
      join_through: "item_taggings"

    timestamps()
  end

  def changeset(%Item{} = item, attrs) do
    item
    |> cast(attrs, [:name, :description, :price, :added_on])
    |> validate_required([:name, :price])
    |> foreign_key_constraint(:category)
  end

end
