Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:edit, :update, :destroy]
end
  # Defines the root path route ("/")
  # root "articles#index"
