Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get '/auth/facebook/callback' => 'sessions#fb_create'
  resources :users
  # resources :welcome, only: [:show]
  resources :sessions, only:[:new, :create, :destroy]
  resources :sports
end
