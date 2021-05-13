Rails.application.routes.draw do
  resources :staffs
  resources :companies
  resources :books
  get "home/index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
