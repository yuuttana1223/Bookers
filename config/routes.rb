Rails.application.routes.draw do
  root to: "homes#top"
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
end
