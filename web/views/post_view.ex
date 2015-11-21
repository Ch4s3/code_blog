defmodule CodeBlog.PostView do
  use CodeBlog.Web, :view
  alias Earmark.Options

  def markdown(body) do
    body
    |> Earmark.to_html(body,  %Options{gfm: true})
    |> raw
  end
end
