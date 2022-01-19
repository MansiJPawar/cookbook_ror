Rails.application.routes.draw do
  resources :elections
  resources :candidates
  resources :ponies
  resources :hospitals
  resources :recipes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # get 'vote/index', to: 'vote#index'
  # match 'vote/list', to: 'vote#list', via: [:post, :get]
  # match 'vote/record_votes', to: 'vote#record_votes', via: [:post]
end
