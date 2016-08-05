# NEW
get "/stores/new" do

end

# Create
post "/stores" do
  # Create a new Store and then send em to that stores show page
end

# UPDATE
put "/stores/:id" do
  ##### Couldnt figure out what to put in line 15
  @store = Store.find(params[:id])
  @store.update(name: params[:store])
  redirect "/stores/show"
end

# Index
get '/stores' do
	@stores = Store.all

	erb(:"stores/index")
end

# Show
get '/stores/:id' do
  @store = Store.find(params[:id])
  erb(:"stores/show")
end

# EDIT
get "/stores/:id/edit" do
  @store = Store.find(params[:id])
  erb(:"stores/edit")
end

# Delete
delete '/stores/:id' do
  @store = Store.find(params[:id])
  # Find a store and destroy it!
  @store.destroy
  # Redirect back to /stores
  redirect "/stores"
end
