get '/users/:id/journals/new' do
  @user = User.find(params[:id])
  users_journals
  erb :'journal/new'
end

post '/users/:id/journals' do
  @journal = Journal.create(user_id: params[:id],
                    journal_name: params[:journalname])
  users_journals
  erb :"journal/visitedplaces"
end


get '/users/:user_id/journals/:id' do
  users_journals
  @journal = Journal.find(params[:id])
  @visitedplaces = @journal.visitedplaces
  @facts = Fact.where(visitedplace_id: @visitedplaces[0].id)
  @pictures = Picture.all
  # where(visitedplace_id: @visitedplaces[0].id)
  erb :'journal/show'
end

post '/journals/:id/visitedplaces' do
  users_journals
  # visitedplaces.erb form submission to database pending
  erb :'pictures/upload'
end