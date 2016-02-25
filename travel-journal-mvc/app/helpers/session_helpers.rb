helpers do

  # def login(user)
  #   session[:user_id] = user.id
  # end

  def logout
    session[:user_id] = nil
  end

  def logged_in?
    !!session[:user_id]
  end

  # return the current_user if there is one
  def current_user
    User.find(session[:user_id])
  end

  def login(username, password)
    user = Logindetail.find_by(username: username)
    if user && user.password == password
      session[:user_id] = user.id
      redirect "/users/#{user.user_id}"
    else
      @form_error = "Username and/or password are incorrect. Try again"
      session[:error] = @form_error
      redirect '/'
    end
  end

end