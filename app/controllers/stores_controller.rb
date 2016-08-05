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

# EDIT
get "/stores/:id/edit" do
  @store = Store.find_by_id params[:id]
  erb :'/stores/edit'
end

# UPDATE
put "/stores/:id" do
  store = Store.find_by_id params[:id]
  store.update(params[:store])
  store.save
  redirect "/stores/#{params[:id]}"
end



# Delete
delete '/stores/:id' do
  store = Store.find_by_id params[:id]
  store.destroy
  redirect '/stores'
end
