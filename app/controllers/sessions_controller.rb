get "/" do
  redirect "/login/new"
end

get "/login/new" do
  erb :"login"
end

post "/login" do
  user = User.login(username, password)
  if user != nil
    session[:id] = user.id
    redirect "users/#{user.id}/cars"
  else
    @error = "Username or password is not correct"
    erb :"login"
  end
end

delete "/login" do
  session.clear
  redirect "/"
end
