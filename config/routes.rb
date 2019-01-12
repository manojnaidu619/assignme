Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :bio, only:[:new, :create, :update, :edit]
  resources :works, except: [:index]
  get '/desk', to: 'home#desk'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
