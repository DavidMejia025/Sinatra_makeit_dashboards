require 'sinatra'
require 'pry'

get '/makers/:name' do
	binding.pry
  	"<h1> Hola #{params[:name].capitalize} !</h1>"
end
#----
