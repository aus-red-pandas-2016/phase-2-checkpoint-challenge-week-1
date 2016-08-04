get "/stores/new" do

end

get '/stores' do 
	@stores = Store.all

	erb(:"stores/index")
end

get '/stores/:id' do  
  # Get a store and show the show page

end

delete '/stores/:id' do 
  # Find a store and destroy it!
  # Redirect back to /stores 
end

post "/stores" do
  # Create a new Store and then send em to that stores show page
end

get "/stores/:id/edit" do
	# Find the store with the params[:id] and show the user the edit page for that store
end


put "/stores/:id" do
  # Send a put request to update a store 
  # Redirect to that stores show page
end