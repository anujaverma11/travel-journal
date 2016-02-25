get "/users/:id" do
    @user = User.find(params[:id])
    # @journal = Journal.where(user_id: @user.id)
    @journal_side_list = Journal.where(user_id: @user.id)
    erb :"profile/profile"
end