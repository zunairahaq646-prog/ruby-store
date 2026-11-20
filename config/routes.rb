
Rails.application.routes.draw do
  resource :session
  resources :passwords, param: :token

  get "home/index"
  root "home#index"

  resources :products do
    resources :subscribers, only: [ :create ]
  end

  resource :unsubscribe, only: [ :show ]

  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # root "posts#index"
end
