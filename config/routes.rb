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

  ## Direct Route for getting user info related to sign-in
  get '/user-info', to: 'users#show'

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

  #ReviewsRoutes
  post "/reviews" => "reviews#create"
  get "/reviews"    => "reviews#index"
  get "/reviews/:id"    => "reviews#show"
  patch "/reviews/:id"  => "reviews#update"
  delete "/reviews/:id" => "reviews#destroy"
  #Genres Routes
  get "/genres"    => "genres#index"
  get "/genres/:id"    => "genres#show"

  #Systems Routes
  get "/systems"    => "systems#index"
  get "/systems/:id"    => "systems#show"

  #FavoritePosts Routes
  post "/favorite_posts" => "favorite_posts#create"
  delete "/favorite_posts/:id" => "favorite_posts#destroy"

   #PostComments Routes
  post "/post_comments" => "post_comments#create"
  get "/post_comments"    => "post_comments#index"
  get "/post_comments/:id"    => "post_comments#show"
  patch "/post_comments/:id"  => "post_comments#update"
  delete "/post_comments/:id" => "post_comments#destroy"
end
