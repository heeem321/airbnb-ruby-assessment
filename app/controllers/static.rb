get '/' do
  erb :"static/index"
end
get '/users/new' do
	erb :"/users/new"
end
get '/sessions/new' do
	erb :"/sessions/new"
end
get'/sessions/end' do 
	session['user_id'] = nil
redirect '/'
end

post '/sessions/end' do
	session['user_id'] = nil
redirect '/'
end

get '/property/new' do
	erb :"/propertys/new"
end

get '/propertys/edit/' do
  erb :"/propertys/edit"
end

get '/propertys/destory/' do
  erb :"/propertys/destroy"
end