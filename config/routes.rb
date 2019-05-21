Rails.application.routes.draw do
  root "hobbys#index"
  devise_for :users

  resources :hobbys

end