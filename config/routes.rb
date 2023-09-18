Rails.application.routes.draw do
  get 'sessions/new'
  root "stories#index"
  get 'stories/index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :stories
  namespace :admin do
      resources :stories

      root to: "stories#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
