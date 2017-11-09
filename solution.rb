require 'sinatra'
require 'pry'

get '/' do	 
  	erb :formulario
 end 

 post '/page2' do
 	@name = params[:name]
	erb :page2 	
 end
#----
