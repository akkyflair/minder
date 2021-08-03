Rails.application.routes.draw do
  
  get "/" => "home#top"

  get "about" => "home#about"

  get "signup" => "users#new"

  post "login" => "users#login"

  post "logout" => "users#logout"

  get "login" => "users#login_form"
  

  
  resources :users 
  resources :posts do
    resources :mindcatches, only: [:create, :destroy]
  end

end
