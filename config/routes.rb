Rails.application.routes.draw do
  resources :helloworld

  resources :users do
    resources :teams
  end

  resources :listings
end
