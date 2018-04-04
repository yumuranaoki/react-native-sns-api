Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  post '/post', to: 'posts#create'
  get '/posts', to: 'posts#show'
  get '/images/:id', to: 'images#show'
end
