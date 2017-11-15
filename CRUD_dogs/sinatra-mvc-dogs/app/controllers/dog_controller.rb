 
get '/' do
	erb :dogs
end
#Read
get '/dogs/' do
	@dogs = Dog.all
	erb :"dogs/all"
end

#Create
get '/dogs/new' do
	erb :"/dogs/new"
end

post '/dogs' do
	puts params
	
	@dog = Dog.new(name: params[:name],age: params[:age])
	p @dog
	if @dog.save
		p @dog
		redirect "/dogs/#{@dog.id}"
	else
		redirect '/dogs/'
	end
end

#Read one
get '/dogs/:id' do
	@dog = Dog.find_by(id: params[:id])
	erb :"/dogs/show"
end

#Update
get '/dogs/:id/edit' do
	@dog = Dog.find_by(id: params[:id])
	erb :"/dogs/edit"
end

put '/dogs/:id' do 
	dog = Dog.find_by(id: params[:id])
	dog.update(name: params[:name], age: params[:age])
	redirect '/dogs/#{dog.id}'
end
#Delete

get '/dogs/:id/delete' do
  dog = Dog.find_by(id: params[:id])
  dog.destroy
  redirect '/'
end

