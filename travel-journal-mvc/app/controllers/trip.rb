get "/trip_add" do
 erb :"journalentry/trip_add"
end


get '/users/:user_id/trip_add' do
  @questions = Question.where(survey_id: params[:survey_id])
  @answers = Answer.all
  erb :"questions/_index"
end

# post "/users/:user_id/journal/:survey_id/trip" do
#   Question.create(survey_id: params[:survey_id],
#     question: params[:question])

#   redirect '/users/:user_id/surveys/edit'
# end


post "/trip" do
  user = session[:user_id]
  trip = Journal.create(journal_name: params[:journalname],
                        user_id: user)

  redirect "/users/#{user}"

end

get "/trip/:tripname" do
  erb :"journalentry/itinerary_add"
end
