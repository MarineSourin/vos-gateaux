Rails.application.routes.draw do
  root to: 'pages#home'
  get 'a-propos', to: 'pages#a-propos'
  resources :recettes, only: [:index, :show, :new, :create, :edit, :update] do
    resources :quantites, only: [:new, :create]
  end
  resources :quantites, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
