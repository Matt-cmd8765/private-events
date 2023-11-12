Rails.application.routes.draw do
  get 'user/show'
  devise_for :users
  resources :events
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"
  get '/rails/info/routes' => 'routes'

end
