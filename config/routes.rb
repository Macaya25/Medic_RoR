Rails.application.routes.draw do
  resources :medical_institutions
  resources :medical_centers
  resources :doctors
  resources :appointments
  root 'posts#index'
  resources :posts

  get 'doctors/search', to: 'doctors#search'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
