Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new', as: :new
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id/reviews/create', to: 'reviews#new'
  # post 'restaurants/:id/reviews', to: 'reviews#create'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]

end
