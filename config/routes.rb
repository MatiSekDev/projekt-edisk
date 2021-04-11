Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "main#index"

  get "/password" => "password#edit", as: :edit_password
  patch "password" => "password#update"

  get "password/reset/edit" => "password_reset#edit"
  patch "password/reset/edit" => "password_reset#update"

  get "password/reset" => "password_reset#new"
  post "password/reset" => "password_reset#create"

  get "/sign_up", to: "registrations#new"
  post "/sign_up" => "registrations#create"

  get "/sign_in", to: "sessions#new"
  post "/sign_in" => "sessions#create"

  delete "/logout" => "sessions#destroy"

end
