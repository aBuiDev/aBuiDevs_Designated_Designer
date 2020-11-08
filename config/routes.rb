Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/restricted'
  devise_for :users
  root to: "pages#home"
  get "/restricted", to: "pages#restricted", as: "restricted"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
