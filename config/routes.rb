Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :cars
  resources :pins
  root 'welcome#index'
  get 'mypins' => 'pins#mypins'
  get 'mycars' => 'cars#mycars'
  get 'pinsof/:user_id' => 'pins#pinsof', :as => "pinsof"
  get 'carsof/:user_id' => 'cars#carsof', :as => "carsof"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
