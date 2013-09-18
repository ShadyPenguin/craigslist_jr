get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/post/create/' do
  erb :_create_post
end

get '/categories/:id/' do
  @category = Category.find(params[:id])
  erb :categories
end

get '/posts/:id/' do
  @post = Post.find(params[:id])
  erb :post_view
end


############ POSTS ####################

post '/post/create/' do
  @post_info = Post.new(params[:post])
  if @post_info.save
    redirect to ('/')
  else
    erb :_create_post
  end
end
