Rails.application.routes.draw do
  post '/post', to: 'posts#create'
  get '/posts', to: 'posts#show'
end
