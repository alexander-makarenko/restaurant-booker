Rails.application.routes.draw do
  root 'static_pages#home'

  resources :restaurants, only: [:index, :new, :create, :destroy]
end