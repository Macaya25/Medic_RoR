Rails.application.routes.draw do
<<<<<<< HEAD

  resources :pacients
  resources :institutions
  resources :medical_centers

=======
  resources :pacients
  resources :institutions
  resources :medical_centers
>>>>>>> 888aea9d734d76184abc80d34554df25b06f8b3e
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
