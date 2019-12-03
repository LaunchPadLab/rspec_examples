Rails.application.routes.draw do
  namespace :api do
    resources :orders, only: [:show]
  end
end
