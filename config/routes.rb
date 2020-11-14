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

  resources :clients

  resources :designers
end
