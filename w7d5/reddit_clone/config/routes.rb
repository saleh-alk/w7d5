Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users
  resource :session
  resources :users do
    resources :posts, only: [:edit, :update]
  end

  resources :posts, except: :index

  resources :subs
end
