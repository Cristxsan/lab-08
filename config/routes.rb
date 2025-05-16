Rails.application.routes.draw do
  get 'messages/index'
  get 'messages/show'
  get 'chats/index'
  get 'chats/show'
  get 'users/index'
  get 'users/show'
  resources :users, only: [:index, :show, :new, :create, :edit, :update]
  resources :chats, only: [:index, :show, :new, :create]
  resources :messages, only: [:index, :show, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'users#index'
end
