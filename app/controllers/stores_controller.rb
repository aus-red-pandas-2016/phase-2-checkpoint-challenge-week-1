get "/stores/new" do
  @store = Store.new
  erb :'stores/new'
end

get '/stores' do 
	@stores = Store.all

	erb(:"stores/index")
end

get '/stores/:id' do 
	@store = Store.find(params[:id])

	erb(:"stores/show")
end

delete '/stores/:id' do 
	@store = Store.find(params[:id])
	@store.destroy 
	redirect to("/stores")
end

post "/stores" do
  @store = Store.new(params[:store])

  if @store.save
    redirect "stores/#{@store.id}"
  else
    erb :"stores/new"
  end
end

get "/stores/:id/edit" do
	@store = Store.find(params[:id])

	erb(:"stores/edit")
end


put "/stores/:id" do
  store = Store.find(params[:id])
  store.name = params[:store][:name]
  store.save 
  redirect "/stores/#{store.id}"
end