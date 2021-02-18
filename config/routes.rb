Rails.application.routes.draw do
  root to: "home#top"
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
end
