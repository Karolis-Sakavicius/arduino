Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :home, only: :index
  resources :leds, only: [:index, :update, :destroy]
  root 'home#index'
end
