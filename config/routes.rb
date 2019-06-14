Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/profile', to: "users#profile"
  post '/login', to: "auth#login"
  post '/signup', to:  "users#create"
  get '/movies', to: "movies#index"
  get '/movies/top5', to: "movies#top5"
  resources :movie_users, only:[:create]
end
