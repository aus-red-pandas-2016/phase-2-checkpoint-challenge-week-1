# NEW
get "/stores/new" do
  erb :'stores/new'
end

# Create
post "/stores" do
  @store = Store.create(name: params[:store][:name])
  redirect "/stores/#{@store.id}"
end

# UPDATE
put "/stores/:id" do
  # Send a put request to update a store
  # Redirect to that stores show page
  @store = Store.find(params[:id])
  @store.name = params[:store][:name]
  @store.save
  redirect "/stores/#{@store.id}"
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
  @store = Store.find(params[:id])
  @store.delete
  redirect "/stores"
end
