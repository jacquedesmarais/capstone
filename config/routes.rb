Rails.application.routes.draw do

  get '/' => 'fishes#index'
  get '/fishes' => 'fishes#index'
  get '/fishes/new' => 'fishes#new'
  get '/fishes/game' => 'fishes#game'
  post '/fishes' => 'fishes#create'
  get '/fishes/:id' => 'fishes#show'
  get '/fishes/:id/edit' => 'fishes#edit'
  patch '/fishes/:id' => 'fishes#update'
  delete '/fishes/:id' => 'fishes#destroy'

  get '/' => 'aquariums#index'
  get '/aquariums' => 'aquariums#index'
  get '/aquariums/new' => 'aquariums#new'
  post '/aquariums' => 'aquariums#create'
  get '/aquariums/:id' => 'aquariums#show'
  get '/aquariums/:id/edit' => 'aquariums#edit'
  patch '/aquariums/:id' => 'aquariums#update'
  delete '/aquariums/:id' => 'aquariums#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
end
