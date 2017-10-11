get "/users/new" do
  erb :'/users/new'
end

post "/users" do
  User.create(username: params[:username], password: params[:password])
  redirect "/login/new"
end
