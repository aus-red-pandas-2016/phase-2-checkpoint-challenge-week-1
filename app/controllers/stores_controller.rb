# NEW
get "/stores/new" do
	erb :"/stores/new"
end

# Create
post "/stores" do
  # Create a new Store and then send em to that stores show page
	@store = Store.create(params[:store])
	if @store.save
		redirect "/stores/#{@store.id}"
	else
		@errors = @store.errors.full_messages
		erb :"/stores/index"
	end
end

# UPDATE
put "/stores/:id" do
  # Send a put request to update a store
	@store = Store.find(params[:id])
	if @store.update(params[:store])
    redirect "/stores/#{@store.id}"
  else
    @errors = @store.errors.messages
    erb :"stores/edit"
  end
end

# Index
get '/stores' do
	#show all stores
	@stores = Store.all
	erb(:"stores/index")
end

# Show
get '/stores/:id' do
  # Get a store and show the show page
	@store = Store.find(params[:id])
	erb :'/stores/show'
end

# EDIT
get "/stores/:id/edit" do
  # Find the store with the params[:id] and show the user the edit page for that store
	@store = Store.find(params[:id])
	erb :"/stores/edit"
end

# Delete
delete '/stores/:id' do
  # Find a store and destroy it!
	@store = Store.find(params[:id])
	@store.destroy
  # Redirect back to /stores
	redirect "/stores"
end
