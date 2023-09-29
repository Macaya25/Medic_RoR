Rails.application.routes.draw do

  resources :pacients
  resources :institutions
  resources :medical_centers
  resources :doctors
  resources :appointments
  root 'posts#index'
  resources :posts

  get 'doctors/search', to: 'doctors#search'
  get 'appointments/schedule', to: 'appointments#schedule'
  
  post 'appointments/search_availability', to: 'appointments#search_availability'

  resource :pacient, only: [:show, :edit, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
