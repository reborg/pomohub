User.blueprint do
  login { Sham.last_name.downcase }
  email  { Sham.email }
  name  { Sham.first_name + " " + Sham.last_name }
  crypted_password { "485eec8d0b60c437abce44d7a839b8d25bce75af" } #testtest
  salt { "d5cc06ce600b6de24eddd3214b294eb8b455d8de" }
  state { "active" }
end

User.blueprint(:test) do
  email { "test@test.com"}
  login  { "test" }
end
