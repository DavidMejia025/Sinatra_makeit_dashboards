require 'sinatra'

get '/makers/juan' do
  	"<h1> Hola <%= param[:id].capitalize %> !</h1>"
end
#----
