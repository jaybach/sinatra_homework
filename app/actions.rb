# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages' do
  # 'Message List here'
  erb :'messages/index'
end
