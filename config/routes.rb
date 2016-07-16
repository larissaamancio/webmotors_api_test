Rails.application.routes.draw do
  get "home" => "home#index"

  get "/models" => "models#index"

  root to: "home#index"
end
