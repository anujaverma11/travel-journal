get '/' do
  @username = ''
  erb :'homepage/login'
end

post "/users" do
  @user = User.create(first_name: params[:firstname],
                      last_name: params[:lastname],
                      email: params[:email],
                      birth_date: params[:birthdate],
                      username: params[:username],
                      password: params[:password])
  redirect "/users/#{@user.id}"
end

#user can sign into the session
# post "/login" do
#   login(params[:username], params[:password])
# end

post '/login' do
  @username = params[:username]
  @user = User.find_by(:username => @username)

  if(@user && @user.password == params[:password])
    auth_login(@user)
    # flash[:message] = 'Thank you for logging in'
    redirect "/users/#{@user.id}"
  else
    @form_error = 'Unable to log you in'
    erb :'homepage/login'
  end

end

#user can sign out of session
get "/logout" do
  auth_logout
  redirect '/'
end
