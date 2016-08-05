# NEW - DONE
get "/stores/new" do
  erb :"stores/new"
end

# Create - DONE
post "/stores" do
  @store = Store.new(params[:name])
  if @store.save
    redirect "/stores/#{@store.id}"
  else
    @errors = @store.errors.full_messages
    erb :"stores/new"
  end
  # Create a new Store and then send em to that stores show page
end

# UPDATE
put "/stores/:id" do
  # Send a put request to update a store
  # Redirect to that stores show page
end

# Index
get '/stores' do
	@stores = Store.all

	erb(:"stores/index")
end

# Show - DONE
get '/stores/:id' do
  @store = Store.find(params[:id])
  erb :"stores/show"
end

# EDIT
get "/stores/:id/edit" do
  # Find the store with the params[:id] and show the user the edit page for that store
end

# Delete
delete '/stores/:id' do
  # Find a store and destroy it!
  redirect '/stores'
end
