Rails.application.routes.draw do
  
  # get "/" => "home#top"

  # get "about" => "home#about"

  # get "signup" => "users#new"

  # post "login" => "users#login"

  # post "logout" => "users#logout"

  # get "login" => "users#login_form"
  
  # resources :users 
  # resources :mindcatches, only: [:create, :destoroy] do
  #   resources :posts 
  # end
  # resources :posts 
  

  post "mindcatches/:post_id/create" => "mindcatches#create"
  post "mindcatches/:post_id/destroy" => "mindcatches#destroy"
  
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"

  get "signup" => "users#new"

  post "login" => "users#login"
  post "logout" => "users#logout"
  get "login" => "users#login_form"
  
  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "/" => "home#top"
  get "about" => "home#about"
end
