Blog::Application.routes.draw do
  resources :posts
  resources :users, only: [:new, :create]
end
