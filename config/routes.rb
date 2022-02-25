Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/tagged', to: "receptacles#tagged", as: :tagged
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :receptacles do
    resources :bookings, only: [:create, :new]
  end
  get 'dashboard', to: 'pages#dashboard'
end
