Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :workshops
  get 'index' => 'workshops#index'
  get 'show' => 'workshops#show'
  # other routes are nested inside :workshops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
