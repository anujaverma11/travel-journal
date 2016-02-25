post '/upload' do
  upload(params[:content]['file'][:filename], params[:content]['file'][:tempfile])
  redirect "users/#{session[:user_id]}"
end