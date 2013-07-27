Donez::Application.routes.draw do
  root :to => "home#index"

  devise_for :users
  resources :users, :blood_requests, :donations

  get '/help' => "blood_requests#new"
  get '/ajutor' => 'blood_requests#new'

  get '/:action' => 'home', :as => 'home'
end
