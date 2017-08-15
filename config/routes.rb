Rails.application.routes.draw do

 
  devise_for :users
  resources :timetables, only: [:index, :create, :update, :destroy]
  
  
  root 'home#index'
end
