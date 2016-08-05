# NEW
get "/stores/new" do

end

# Create
post "/stores" do
  # Create a new Store and then send em to that stores show page
end

# UPDATE
put "/stores/:id" do
  # Send a put request to update a store
  # Redirect to that stores show page
  redirect "stores/:id"
end

# Index
get '/stores' do
	@stores = Store.all

	erb(:"stores/index")
end

# Show
get '/stores/:id' do
  @store = Store.find(params[:id])
  erb :"stores/show"
end

# EDIT
get "/stores/:id/edit" do
  @store = Store.find(params[:id])
  erb :"stores/edit"
end

# Delete
delete '/stores/:id' do
  # Find a store and destroy it!
  # Redirect back to /stores
end
