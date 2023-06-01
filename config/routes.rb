Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :customers, only: [:show, :create, :update, :destroy] do
        resources :subscriptions, only: [:index, :create, :update, :destroy]
      end
    end
  end
end
