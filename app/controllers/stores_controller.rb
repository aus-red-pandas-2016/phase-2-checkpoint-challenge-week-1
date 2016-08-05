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
  p params
  @store = Store.find(params[:id])
  store_par = params[:store]
  name = store_par.values_at(:name)
  @store.name = name.join
  erb :"stores/show"
end

# Index - DONE
get '/stores' do
	@stores = Store.all
	erb(:"stores/index")
end

# Show - DONE
get '/stores/:id' do
  @store = Store.find(params[:id])
  erb :"stores/show"
end

# EDIT - DONE
get "/stores/:id/edit" do
  @store = Store.find(params[:id])
  erb :"stores/edit"
  # Find the store with the params[:id] and show the user the edit page for that store
end

# Delete - DONE
delete '/stores/:id' do
  @store = Store.find(params[:id])
  @store.delete
  redirect '/stores'
end
