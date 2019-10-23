Rails.application.routes.draw do
  resources :adoptions, only: [:new,:create,:show]
  resources :favorites, only: [:new,:create,:delete]
  resources :pets, only: [:new,:create,:index,:show]
  resources :shelters, only: [:new,:create,:show,:delete]
  resources :adopters 

  root 'sessions#index'

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
