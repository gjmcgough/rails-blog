Blog::Application.routes.draw do
  resources :posts
  resources :users, only: [:new, :create]
  get '/signup' => 'users#new'
  post'/users' => 'users#create'
  resources :sessions, only: [:new, :create, :destroy]
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
end
