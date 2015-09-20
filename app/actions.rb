# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

post '/messages' do
  @message = Message.new(
    title: params[:title],
    content: params[:content],
    author: params[:author]
  )
  @message.save
  redirect '/messages'
end

# step 6 - even though it doesn't seem to be in the instructions (at least not explicitly),
# the below also needs to be added
get '/messages/new' do
  erb :'messages/new'
end

get '/messages/:id' do
  @message = Message.find params[:id]
  erb :'messages/show'
end