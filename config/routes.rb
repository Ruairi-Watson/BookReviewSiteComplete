Rails.application.routes.draw do
  # Devise routes for User model
  devise_for :users
  
  # Books resources
  resources :books

  # Root path (Book List by default)
  root "books#index"
end
