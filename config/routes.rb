Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: %i[create index show] do
    resources :reviews, only: %i[new create]
  end

  resources :reviews, only: :destroy

  root 'restaurants#index'
end
