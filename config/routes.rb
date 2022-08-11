Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cats do
    resources :bookings, only: [ :index, :show, :new, :create, :destroy ]
  end
  get "my-bookings", to: "bookings#my_bookings"
  get "my-cats", to: "cats#my_cats"
end
