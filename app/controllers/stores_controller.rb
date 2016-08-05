# NEW
get "/stores/new" do
  erb :'store/new'
end

# Create
post "/stores" do
  # @store = Store.new(params[:store])
  # # Create a new Store and then send em to that stores show page
  # if @store.save
  # erb :'stores/new'
end

# UPDATE
put "/stores/:id" do
  # Send a put request to update a store
  redirect 'stores/show'
end

# Index
get '/stores' do
	@stores = Store.all

	erb(:"stores/index")
end

# Show
get '/stores/:id' do
  @store = Store.find(params[:id])
  erb :'stores/show'
end

# EDIT
get "/stores/:id/edit" do
  @store = Store.find(params[:id])
  erb :'stores/edit'
end

# Delete
delete '/stores/:id' do
  store = Store.find(params[:id])
  store.destroy
  redirect '/stores'
end
