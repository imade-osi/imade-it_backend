Rails.application.routes.draw do
  resources :career_services
  resources :users
  resources :login, only: [:create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # namespace :api do
  #   namespace :v1 do

      # # get '/users/:id', to: 'users#show'
      # post '/auth', to: 'auth#create'
      # post '/users', to: 'users#create'

  #   end
  # end
end

