require 'sinatra'
require 'pry'

get '/' do
	if request.env["HTTP_PERMISO"]
		"Si lo logramos!"
	else
		"Sin permiso"
	end
end