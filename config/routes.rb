Rails.application.routes.draw do

  get 'reviews/create'
  resources :beds do
    resources :bookings, only: %i[create new]
    resources :reviews, only: %i[create]
  end

  resources :bookings, only: %i[index show destroy]

  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
