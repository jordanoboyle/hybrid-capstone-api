Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  #USER ROUTES
  post "/users" => "users#create"
  get "/users"    => "users#index"
  get "/users/:id"    => "users#show"
  patch "/users/:id"  => "users#update"
  delete "/users/:id" => "users#destroy"

  #SESSIONS ROUTES
  post "/sessions"  => "sessions#create"

  #Posts Routes
  post "/posts" => "posts#create"
  get "/posts"    => "posts#index"
  get "/posts/:id"    => "posts#show"
  patch "/posts/:id"  => "posts#update"
  delete "/posts/:id" => "posts#destroy"

  #Faqs Routes
  post "/faqs" => "faqs#create"
  get "/faqs"    => "faqs#index"
  get "/faqs/:id"    => "faqs#show"
  patch "/faqs/:id"  => "faqs#update"
  delete "/faqs/:id" => "faqs#destroy"

  #Genres Routes
  get "/genres"    => "genres#index"
  get "/genres/:id"    => "genres#show"

  #Systems Routes
  get "/systems"    => "systems#index"
  get "/systems/:id"    => "systems#show"
  
end
