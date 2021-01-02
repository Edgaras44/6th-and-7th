Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :shops

  root 'bikes#index'
  get '/home' => 'bikes#index'
  get '/login' => 'users#login'
  get '/register' => 'users#register'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/users/login' => 'users#login'
  get '/users/register' => 'users#register'
  get 'Logout' => 'bikes#logout'
  get '/shop' => 'shops#index'
  get '/contacts' => 'contacts#index'
  get 'shop' => 'shops#new'
  get 'edit' => 'shops#edit'
  get 'delete' => 'shops#delete'
  get '/search' => 'shops#search'
  get 'update' => 'shops#update'
  get 'basket' => 'shops#basket'
end
