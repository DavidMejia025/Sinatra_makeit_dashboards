require 'sinatra'

get '/' do
  if params.present?
  	"<h1> Hola param[:nombre]!</h1>"
  else
  	"<h1> Hola desconocido!</h1>"
  end
end
