Rails.application.routes.draw do
  root "todos#index"

  resources :todos
  resources :sessions

  post "/sessions/new", to: "sessions#create"
end
