Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :maritime_terms

      root to: "users#index"
    end
  devise_for :users
  resources :maritime_terms
  root to: "maritime_terms#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
