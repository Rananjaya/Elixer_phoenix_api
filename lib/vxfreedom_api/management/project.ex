defmodule VxfreedomApi.Management.Project do
  use Ecto.Schema
  import Ecto.Changeset

  schema "projects" do
    field :escription, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:title, :escription])
    |> validate_required([:title, :escription])
  end
end
