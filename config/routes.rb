Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "welcome#index"

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  get 'authorized', to: 'sessions#page_requires_login'
  get '/auth/facebook/callback' => 'sessions#fb_create'
  resources :users, only: [:show, :new, :create, :edit, :update] do
    resources :locations, only: [:show, :index, :new, :edit]
    resources :sports, only: [:show, :index, :new, :edit]
    resources :events, only: [:show, :index, :new, :edit]
  end
  # resources :welcome, only: [:show]
  # resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :sessions, only:[:new, :create, :destroy]
  resources :sports, only: [:index, :show, :new, :create, :edit, :update]
  resources :locations, only: [:index, :show, :new, :create, :edit, :update]
  resources :events, only: [:index, :show, :new, :create, :edit, :update]
end
