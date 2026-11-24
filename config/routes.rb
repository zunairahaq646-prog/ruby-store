Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  resources :todos

  get "home/index"
  root "home#index"

  resources :products do
    resources :subscribers, only: [:create]
  end

  resource :unsubscribe, only: [:show]
end
