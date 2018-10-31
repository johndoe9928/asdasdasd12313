defmodule Benchmarker.Repo.Migrations.CreateStories do
  use Ecto.Migration

  def change do
	create table(:stories) do
		add :title, :string
		add :body, :string
	end
  end
end
