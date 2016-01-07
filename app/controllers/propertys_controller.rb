post '/propertys/new' do
	@property = Property.create(user_id: session[:user_id], p_name: params[:p_name], description: params[:desc])
	if @property.save
		redirect to('/')
	else
		"FAIL!"
	end
end

get '/propertys/view/' do
	# @property = Property.where(user_id: current_user.id)
	@properties = current_user.properties
  erb :"/propertys/view"
end

post '/propertys/edit' do
  @property = Property.find_by(id: params[:id])
  @property.update(p_name: params[:p_name],description: params[:desc] )
end

post '/propertys/destroy' do
  @property = Property.find_by(id: params[:id])
  @property.destroy
end