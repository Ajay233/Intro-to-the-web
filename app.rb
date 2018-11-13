require 'sinatra'

get '/' do
  "Hello World"
end

get '/secret' do
  "Shhhh it's a secret ;)"
end

get '/page1' do
  "Welcome!!!!"
end

get '/page2' do
  "Wilcommen"
end

get '/random-cat' do
  @name =  ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  @surname = params[:surname]
  erb(:index)
end

get '/cat_form' do
  erb(:cat_form)
end
