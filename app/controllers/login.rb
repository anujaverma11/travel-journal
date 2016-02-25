get "/" do
  erb :"homepage/login"
end


post "/users" do
  @user = User.create(first_name: params[:firstname],
                      last_name: params[:lastname],
                      email: params[:email],
                      facebook_user_name: params[:facebookname],
                      birth_date: params[:birthdate]
                      )
  @logindetail = Logindetail.create(username: params[:username], user_id: @user.id)
  @logindetail.password = params[:password]
  redirect "/users/#{@user.id}"
end

#user can sign into the session
post "/login" do
  login(params[:username], params[:password])
end


#user can sign out of session
get "/logout" do
  logout
  redirect '/'
end
