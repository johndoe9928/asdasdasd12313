defmodule BenchmarkerWeb.PageView do
  use BenchmarkerWeb, :view


  @attributes ~W(id title)

  def render("index.json", %{stories: stories}) do
    for story <- stories do
      render("show.json", story: story)
    end
  end

  def render("show.json", story: story) do
    Map.take(story, [:id, :title])
  end
end

