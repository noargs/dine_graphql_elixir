defmodule Dine.Menu.Category do
    use Ecto.Schema
    import Ecto.Changeset
    alias Dine.Menu.Category

    schema "categories" do
        field :description, :string
        field :name, :string, null: false

        has_many :items, Dine.Menu.Item

        timestamps()
    end

    def changeset(%Category{} = category, attrs) do
        category
        |> cast(attrs, [:description, :name])
        |> validate_required([:name])
    end
end