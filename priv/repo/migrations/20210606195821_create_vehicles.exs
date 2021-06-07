defmodule PhxMapWebComp.Repo.Migrations.CreateVehicles do
  use Ecto.Migration

  def up do
    create table(:vehicles) do
      add :identificationCode, :string
      add :location, :geometry

      timestamps()
    end
  end

  def down do
    drop table(:vehicles)
  end
end
