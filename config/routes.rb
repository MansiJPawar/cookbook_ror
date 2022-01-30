Rails.application.routes.draw do
  resources :calcapps
  
  post 'calcapps/new'
  # post 'calcapps#new'
  # get "calcapps#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
