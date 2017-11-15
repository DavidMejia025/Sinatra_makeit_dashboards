# Landing page
get '/' do
	erb :home
end

#Index/Read
get '/cars'  do
	@cars = Car.all
	erb :"/cars/index"
end

#Create/ New
get '/cars/new' do
	@owner_id = params[:owner_id]
	erb :"/cars/new"
end

post '/cars' do
	p params
	car = {
		brand: params[:brand], 
		model: params[:model], 
		img_url: params[:img_url],
		owner_id: params[:owner_id]
	}
	car = Car.new(car)
	if car.save
		redirect '/cars'
	else
		@errors = car.errors.full_messages
		erb :"/cars/new"
	end
end

#Read/Show
get '/cars/:id' do
	@car = Car.find(params[:id])
	erb :"/cars/show"
end

#Edit
get '/cars/:id/edit' do
	@car = Car.find(params[:id])
	erb :"/cars/edit"
end

patch '/cars/:id' do
	@car = Car.find(params[:id])
	updated_car ={
		brand: params[:brand], 
		model: params[:model], 
		img_url: params[:img_url]
	}
	if(@car.update(updated_car))
		redirect "/cars/#{@car.id}"
	else
		@errors = @car.errors.full_messages
		erb :"/cars/edit"
	end
end

#Delete
delete '/cars/:id' do
	car = Car.find(params[:id])
	car.delete
	redirect '/cars' 
end