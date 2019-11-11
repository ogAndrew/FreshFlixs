Rails.application.routes.draw do
  resources :genres
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "movies#index"
  resources :movies do
    resources :reviews
    resources :favorites, only: [:create, :destroy]
  end

  resources :users
  get "signup" => "users#new"
  get "signin" => "session#new"
  resource :session, only: [:new, :create, :destroy]
end