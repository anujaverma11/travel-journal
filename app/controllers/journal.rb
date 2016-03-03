get '/users/:id/journals/new' do
  @user = User.find(params[:id])
  users_journals
  erb :'journal/new'
end

post '/users/:id/journals' do
  @journal = Journal.create(user_id: params[:id],
                    journal_name: params[:journalname])
  users_journals
  redirect "/users/#{@journal.user_id}"
end


get '/users/:user_id/journals/:id' do
  users_journals
  @journal = Journal.find(params[:id])
  @visitedplaces = @journal.visitedplaces
  if @visitedplaces.count != 0
    @facts = Fact.where(visitedplace_id: @visitedplaces[0].id)
  end
  @pictures = Picture.all

  erb :'journal/show'
end

post '/journals/:id/visitedplaces' do
  @visitedplace = Visitedplace.create(user_id: params[:id],
                    journal_name: params[:journalname])
  users_journals
  redirect "/users/#{@journal.user_id}"
end