get "/login/new" do
  erb :"login"
end

post "/login" do
  user = User.login(username, password)
  if user != nil
    sessions[:id] = user.id
    redirect "/cars"
  else
    @error = "Username or password is not correct"
    erb :"login"
  end
end
