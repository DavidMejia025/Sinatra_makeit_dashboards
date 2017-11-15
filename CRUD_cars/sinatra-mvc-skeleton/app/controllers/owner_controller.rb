
#Create
get '/owners/new' do
	erb :"/owners/new"
end

post '/owners' do
	owner_data = {
		First_name: params[:First_name],
		Last_name: params[:Last_name],
		img_url: params[:img_url]
	}
	owner = Owner.new(owner_data)
	if owner.save
		redirect "/owners/#{owner.id}"
	else
		@errors = owner.errors.full_messages
		erb :"/owners/new"
	end
end

#Read/index 
get '/owners/index' do
	@owners = Owner.all
	p @owners
 	 erb :"owners/index"
end

#Read/one
get '/owners/:id' do 
	@owner = Owner.find(params[:id])
	erb :"/owners/show"
end

#Update
get '/owners/edit/:id' do
	@owner = Owner.find(params[:id])
	erb :"/owners/edit"
end

patch '/owners/:id' do
	@owner = Owner.find(params[:id])
	owner_params = {
		First_name: params[:First_name],
		Last_name: params[:Last_name],
		img_url: params[:img_url]
	}
	if @owner.update(owner_params)
		puts "TRUTY"
		redirect "/owners/#{@owner.id}"
	else
		puts "Falsy"
		@errors = @owner.errors.full_messages
		erb :"owners/edit"
	end
end

#Delete
get '/owners/delete/:id' do
	@owner = Owner.find(params[:id])
	@owner.destroy
	redirect "/owners/index"
end


