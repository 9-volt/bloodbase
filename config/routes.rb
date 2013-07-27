Donez::Application.routes.draw do
  root :to => "home#index"
  devise_for :users
  resources :users, :blood_requests
end
