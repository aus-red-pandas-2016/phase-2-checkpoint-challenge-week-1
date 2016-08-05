# NEW
get "/stores/new" do
# return html form for creating a store?
  erb :'stores/new'
end

# Create
post "/stores" do
    @store = Store.find(params[:id])
  # Create a new Store and then send em to that stores show page
  redirect 'stores/:id'
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

# Show
get '/stores/:id' do
  # Get a store and show the show page_V
  @store = Store.find(params[:id])
  erb :'stores/show'
end

# EDIT
get "/stores/:id/edit" do
  # Find the store with the params[:id] and show the user the edit page for that store
  @store = Store.find(params[:id])
  erb :'stores/edit'
end

# Delete
delete '/stores/:id' do
  @store = Store.find(params[:id])
  @store.destroy
  # Find a store and destroy it!
  # Redirect back to /stores
  redirect '/stores'
end
