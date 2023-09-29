Rails.application.routes.draw do
  resources :pacients
  resources :institutions
  resources :medical_centers
  resources :doctors
  resources :appointments do
    collection do
      get 'search' # Define a custom search action
    end
  end
  root 'posts#index'
  resources :posts

  get 'doctors/search', to: 'doctors#search'
  # get 'appointments/schedule', to: 'appointments#schedule'
  
  # post 'appointments/search_availability', to: 'appointments#search_availability'
  # get 'search_appointments', to: 'appointments#search', as: 'search_appointments'



  # get 'search_appointments', to: 'appointments#search', as: 'search_appointments'


  resource :pacient, only: [:show, :edit, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
