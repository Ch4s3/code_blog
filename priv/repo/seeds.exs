alias CodeBlog.Repo
alias CodeBlog.Role
alias CodeBlog.User
role = %Role{}
  |> Role.changeset(%{name: "Admin Role", admin: true})
  |> Repo.insert!()
admin = %User{}
  |> User.changeset(%{username: "admin", email: "admin@test.com", password: "test", password_confirmation: "test", role_id: role.id})
  |> Repo.insert!()
