Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :workshops do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :update]
  get '/requests', to: 'workshops#requests', as: :requests
  # patch '/requests/confirm', to: 'workshops#confirm', as: :confirm_request
  # other routes are nested inside :workshops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

