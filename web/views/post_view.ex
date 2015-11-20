defmodule CodeBlog.PostView do
  use CodeBlog.Web, :view

  def markdown(body) do
    body
    |> Earmark.to_html
    |> raw
  end
end
