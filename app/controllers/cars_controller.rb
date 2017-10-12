get "/users/:user_id/cars" do
  if session[:id]
    @user = User.find(params[:user_id])
    @cars = @user.cars
    erb :"/cars/index"
  else
    redirect "/"
  end
end
