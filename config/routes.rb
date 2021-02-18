Rails.application.routes.draw do
  root to: "home#index"
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
end
