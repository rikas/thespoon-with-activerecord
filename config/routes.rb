Rails.application.routes.draw do
  root to: 'restaurants#index'
  # SAME AS: get '/', to: 'restaurants#index'

  # CRUD

  # RESTFUL resource
  resources :restaurants, except: [:destroy]
  # resources :restaurants, only: [:show, :index]

  # verb 'path', to: 'controller#action'

  # C
  # Create one restaurant - 2 routes!
  # get '/restaurants/new', to: 'restaurants#new'
  # post '/restaurants', to: 'restaurants#create'

  # # R
  # # Read all restaurants (list all the restaurants)
  # get '/restaurants', to: 'restaurants#index'

  # # Read one restaurant (show info about a specific restaurant)
  # get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # # U
  # # Update a restaurant information - 2 routes!
  # get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch '/restaurants/:id', to: 'restaurants#update'

  # # D
  # # Delete a restaurant
  # delete '/restaurants/:id', to: 'restaurants#destroy'
end
