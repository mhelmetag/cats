Rails.application.routes.draw do
  root 'cats#index'

  resources :cats, only: [:index, :new, :create]
end
