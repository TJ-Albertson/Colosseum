Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "profile#index"

  get "/search", to: "search#index"
  get "/profile", to: "user#profile"
  get "/users", to: "user#search"

end
