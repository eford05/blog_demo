Rails.application.routes.draw do
  get "users/profile"
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
  get "/u/:id", to: "users#profile", as: "user"

  resources :posts do
    resources :comments
  end

  root "pages#home"

  get "home", to: "pages#home"
  get "about", to: "pages#about"


  get "up" => "rails/health#show", as: :rails_health_check
  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
