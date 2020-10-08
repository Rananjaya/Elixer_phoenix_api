defmodule VxfreedomApi.Repo.Migrations.CreateProjects do
  use Ecto.Migration

  def change do
    create table(:projects) do
      add :title, :string
      add :escription, :text

      timestamps()
    end

  end
end
