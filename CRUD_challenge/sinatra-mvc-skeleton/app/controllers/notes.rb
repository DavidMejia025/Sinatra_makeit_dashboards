require 'sinatra'
get '/' do
	erb :home
end

put '/notes/:id' do
	note = Note.find_by(id: params[:id])
	note.update(title: params["note"]["title"], content: params["note"]["content"], grade: params["note"]["grade"])
	puts note
	redirect "/notes/#{note.id}"
end

#Index 
get '/notes' do
	@notes = Note.all
	erb :"notes/index"
end

#Form to create a new entry
get '/notes/create' do
	erb :"notes/create"
end

#Update
get '/notes/:id/edit' do
	@note = Note.find(params[:id])
	puts @note.title
	erb :"notes/edit"
end

#delete
get '/notes/:id/delete' do
	note = Note.find_by(id: params[:id])
	note.destroy
	redirect "/notes"
end
#Read
get '/notes/:id' do
	@note = Note.find(params[:id])
	erb :"notes/show"
end

get '/notes/:id/edit' do
	@note = Note.find(params[:id])
	erb :edit
end

#Create
post '/notes' do
	@note = Note.create(params[:note])
	redirect "/notes/#{@note.id}"
end