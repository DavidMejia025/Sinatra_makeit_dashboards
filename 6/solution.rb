# pseudo codigo.
# 1.recibir el request con un metodo get proveniente de la direccion '/'
# 2. presentar la pagina con el valor del contador y el boton
# 3. cuando se le de click al boton ir a la misma pagina
# 4. en el metodo get recibir el valor en params
# 5. aumentar la cuenta en el archivo de views 
# 6. subir la pagina con el nuevo valor del contador.
# 	


require 'sinatra'
require 'pry'

get '/' do
	if params[:value]
		@value = params[:value].to_i+1
	else
		@value 
	end
	erb :contador
end 
