defmodule CodeBlog.RoleChecker do
  alias CodeBlog.Repo
  alias CodeBlog.Role

  def is_admin?(user) do
    (role = Repo.get(Role, user.role_id)) && role.admin
  end
end
