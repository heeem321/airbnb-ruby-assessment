post '/users/create' do 
	@user = User.new(params[:user])
	if @user.save
		redirect to('/')
	else
		@errors = @user.errors
		erb '/users/create' #=> signup page view
		puts "Error invailid entry?"
	end
end
