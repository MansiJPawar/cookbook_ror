Rails.application.routes.draw do
  resources :candidates
  resources :ponies
  resources :hospitals
  resources :recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
