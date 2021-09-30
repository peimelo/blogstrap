Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  resources :articles do
    resources :comments, only: %i[create destroy]
  end

  resources :categories, except: [:show]
end
