defmodule CodeBlog.PageController do
  use CodeBlog.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
