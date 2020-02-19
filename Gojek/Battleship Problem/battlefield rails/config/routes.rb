Rails.application.routes.draw do
  # resources :user
  get '/users', to: 'user#index'
  get '/user/', to: 'user#show'
  post '/user/', to: 'user#create'
  delete '/user/', to: 'user#delete'

  get '/worlds', to: 'world#index'
  get '/world/', to: 'world#show'
  get '/world/play', to: 'world#play'
  post '/world/', to: 'world#create'
  delete '/world/', to: 'world#delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
