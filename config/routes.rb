Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :ideas, only: [ :index ]
    end
  end

  resources :ideas

  get "info", to: "pages#info"

  root to: 'ideas#index'
end
