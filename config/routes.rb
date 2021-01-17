Rails.application.routes.draw do
  devise_for :users

  resources :ideas, only: [:index, :show]

  get "info", to: "pages#info"

  root to: 'ideas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
