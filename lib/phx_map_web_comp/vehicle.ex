defmodule PhxMapWebComp.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicles" do
    field :identificationCode, :string
    field :location, Geo.PostGIS.Geometry

    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:identificationCode])
    |> validate_required([:identificationCode])
  end
end
