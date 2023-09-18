Rails.application.routes.draw do
  root "stories#index"
  get 'stories/index'
  namespace :admin do
      resources :stories

      root to: "stories#index"
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
