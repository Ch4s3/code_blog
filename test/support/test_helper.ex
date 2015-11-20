defmodule CodeBlog.TestHelper do
  alias CodeBlog.Repo
  alias CodeBlog.User
  alias CodeBlog.Role
  alias CodeBlog.Post

  import Ecto.Model

  def create_role(%{name: name, admin: admin}) do
    Role.changeset(%Role{}, %{name: name, admin: admin})
    |> Repo.insert
  end

  def create_user(role, %{email: email, username: username, password: password, password_confirmation: password_confirmation}) do
    role
    |> build(:users)
    |> User.changeset(%{email: email, username: username, password: password, password_confirmation: password_confirmation})
    |> Repo.insert()
  end

  def create_post(user, %{title: title, body: body}) do
    user
    |> build(:posts)
    |> Post.changeset(%{title: title, body: body})
    |> Repo.insert()
  end
end
