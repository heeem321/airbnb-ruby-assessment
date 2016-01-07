# post '/propertys/new' do
# 	@property = Property.create(user_id: session[:user_id], p_name: params[:p_name], description: params[:desc])
# 	if @property.save
# 		redirect to('/')
# 	else
# 		"FAIL!"
# 	end
# end

# get '/propertys/view/' do
# 	# @property = Property.where(user_id: current_user.id)
# 	@properties = current_user.properties
#   erb :"/propertys/view"
# end

# post '/propertys/edit' do
#   @property = Property.find_by(id: params[:id])
#   @property.update(p_name: params[:p_name],description: params[:desc] )
# end

# post '/propertys/destroy' do
#   @property = Property.find_by(id: params[:id])
#   @property.destroy
# end

get '/properties/new' do
	@property = Property.new
	erb :"/propertys/new"
end

post '/properties' do
	@property = Property.new(user_id: session[:user_id], p_name: params[:p_name], description: params[:desc])
	if @property.save
		redirect '/'
	else
		redirect 'properties/new'
	end
end

get '/properties' do
	@properties = Property.all
	erb :"/propertys/index"
end

get '/properties/:id' do
	@property = Property.find(params[:id])
	erb :"/propertys/show"
end

get '/properties/:id/edit' do
	@property = Property.find(params[:id])
	erb :"/propertys/edit"
end

patch '/properties/:id' do
	@property = Property.find(params[:id])
	@property.update(p_name: params[:p_name],description: params[:desc] )
	redirect '/properties'
end

delete '/properties/:id' do
	@property = Property.find(params[:id])
	@property.destroy
	redirect '/properties'
end



