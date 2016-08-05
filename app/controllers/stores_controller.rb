# NEW
get "/stores/new" do
  erb :'stores/new'
end

# Create
post "/stores" do
  # Create a new Store and then send em to that stores show page
  @store = Store.create(name: params[:name])
  @store.save
  redirect '/'
end

# UPDATE
put "/stores/:id" do
  # Send a put request to update a store
  @store = Store.find_by(id: params[:id])
  #have to push up....

  # Redirect to that stores show page
end

# Index
get '/stores' do
	@stores = Store.all
	erb(:"stores/index")
end

# Show
get '/stores/:id' do
  @store = Store.find_by(id: params[:id])
  @locations = @store.locations
  # @products = @locations.products
  # binding.pry
  # Get a store and show the show page
erb :'stores/show'
end

# EDIT
get "/stores/:id/edit" do
  # Find the store with the params[:id] and show the user the edit page for that store
@store = Store.find_by(id: params[:id])
erb :'stores/edit'
end


# Delete
delete '/stores/:id' do
  # Find a store and destroy it!
  # Redirect back to /stores
end
