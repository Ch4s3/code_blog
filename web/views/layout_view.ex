defmodule CodeBlog.LayoutView do
  use CodeBlog.Web, :view

  def current_user(conn) do
    Plug.Conn.get_session(conn, :current_user)
  end
end
