Rails.application.routes.draw do
  # get 'books/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
# root to: "books#index"
  resources :books
  resources :authors

end
