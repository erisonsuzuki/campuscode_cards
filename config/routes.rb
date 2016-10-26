Rails.application.routes.draw do
  root 'cards#index'
  
  resources :cards, only: [:index, :show, :new, :create]
end
