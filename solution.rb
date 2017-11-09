# pseudo codigo.
# 1.recibir el request con un metodo get proveniente de la direccion '/'
# 2.ir al archivo de views para generar la solucion.
# 3. en el archivo de views definir los strings de soy par y soy impar.
# 4. hacer un ciclo que imprima los numeros del 1 al 50
# 	en este ciclo evaluar si el numero es partition 
# 		imprimir soy par.
# 	sino 
# 		imprimir soy impar.
# 	end
# 	y seguir con el 4.


require 'sinatra'

get '/' do	 
  	erb :numbers
end 
