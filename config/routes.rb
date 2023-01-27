Rails.application.routes.draw do
  get 'users/show'
  root 'static_pages#home'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :books
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
