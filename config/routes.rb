Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Pages(main) Routes
  root to: 'pages#index', as: 'home'

  # Projects Routes
  # get '/projects', to: 'projects#index'
  # get '/projects/new', to: 'projects#new'
  # post '/projects/new', to: 'projects#create'
  # get '/projects/:id', to: 'projects#show', as: 'projects_show'

  resources :projects
  resources :clients
end
