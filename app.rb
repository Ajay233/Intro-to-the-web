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

get '/cat' do
  @name =  ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
