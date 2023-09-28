Rails.application.routes.draw do
  #resources :specialities
  resources :pacients
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
