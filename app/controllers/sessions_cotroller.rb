post '/sessions/create'  do
	@user = User.find_by(email: params[:user][:email])
	if @user && @user.authenticate(params[:user][:password])
		session['user_id'] = @user.id
		redirect '/'
	else
		redirect '/'
	end
end