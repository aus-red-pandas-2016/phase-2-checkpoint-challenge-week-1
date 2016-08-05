# Index
get '/stores' do
  @stores = Store.all

  erb :"stores/index"
end

# NEW
get "/stores/new" do
  erb :'stores/new'
end

# Create
post "/stores" do
  @store = Store.find_or_initialize_by(params[:store])
  if @store.save
    redirect "/stores/#{@store.id}"
  else
    redirect 'stores/new'
  end
end

# Show
get '/stores/:id' do
  # Get a store and show the show page
  @store = Store.find_by_id params[:id]
  erb :'stores/show'
end

# UPDATE
put "/stores/:id" do
  # Send a put request to update a store
  # Redirect to that stores show page
end

# EDIT
get "/stores/:id/edit" do
  # Find the store with the params[:id] and show the user the edit page for that store
end

# Delete
delete '/stores/:id' do
  # Find a store and destroy it!
  # Redirect back to /stores
end
