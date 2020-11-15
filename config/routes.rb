Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Pages(main) Routes
  root to: 'pages#index', as: 'home'

  
  # get '/projects', to: 'projects#index'
  # get '/projects/new', to: 'projects#new'
  # get '/projects/:id', to: 'projects#show', as: 'projects_show'


  # Projects Routes
  resources :projects
  put '/projects/:id/remove_designer', to: 'projects#remove_designer', as: 'remove_designer'
  post '/projects/:id/message_create_designer', to: 'projects#message_create_designer', as: 'message_create_designer'
  post '/projects/:id/message_create_client', to: 'projects#message_create_client', as: 'message_create_client'

  resources :clients

  resources :designers
end
