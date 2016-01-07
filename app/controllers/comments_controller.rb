post '/comments/:id/create' do
	@comment = Comment.new(comment: params[:text], user_id: session[:user_id], property_id: params[:id])
	if @comment.save
		redirect '/'
	else
		"Failed!!"
	end
end

get '/comments/:id/show' do
	@comment = Comment.where(property_id: params[:id])
  erb :"/comments/show"
end

post '/comments/edit' do
  @comment = Comment.find_by(id: params[:id])
  @comment.update(comment: params[:newcomment])
  redirect '/'
end

post '/comments/destroy' do
  @comment = Comment.find_by(id: params[:id])
  byebug
  @comment.destroy
end

get '/bookings/:id/new' do
	@temp = params[:id]
	erb :"bookings/new"
end