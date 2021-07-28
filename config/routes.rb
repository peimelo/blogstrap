Rails.application.routes.draw do
  root 'articles#index'

  resources :articles
  resources :categories, except: [:show]
end
