Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/profile', to: "users#profile"
  post '/login', to: "auth#login"
  post '/signup', to:  "users#create"
  get '/movies', to: "movie#index"

end
