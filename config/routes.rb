Donez::Application.routes.draw do
  root :to => "home#index"
  get '/faq'  => "home#faq"

  devise_for :users
  resources :users, :blood_requests, :donations

  get '/help' => "blood_requests#new"
end
