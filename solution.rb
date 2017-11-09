require 'sinatra'

get '/makers/:name' do
  	'<h1> Hola "#{params[:name].capitalize}" !</h1>'
end
#----
