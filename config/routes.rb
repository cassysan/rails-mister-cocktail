Rails.application.routes.draw do
  root :to => 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
  get '/cocktails/search/:q', to: 'cocktails#search', as: :search

  resources :ingredients, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
