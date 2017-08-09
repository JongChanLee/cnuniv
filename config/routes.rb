Rails.application.routes.draw do

  
  root 'home#timetable' #Main Page
  get '/home/index' => 'home#index'

  resources :timetables, only: [:index, :create, :update, :destroy]
end
