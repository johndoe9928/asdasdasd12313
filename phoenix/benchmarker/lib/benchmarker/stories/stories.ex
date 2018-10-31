defmodule Benchmarker.Story do
	  use Ecto.Schema



  schema "stories" do
    field :title     # Defaults to type :string
    field :body
  end
end
