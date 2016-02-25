def users_journals
    @journal_side_list = Journal.where(user_id: session[:user_id])
end