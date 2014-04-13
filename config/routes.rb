Donez::Application.routes.draw do
  root :to => "home#index"

  namespace :admin do
    root :to => 'blood_requests#index'

    resources :users
    resources :blood_requests do
      member do
        post :approve, :disapprove, :archive, :unarchive
      end
    end
  end

  devise_for :users

  resources :donations
  resources :cards do
    resources :case_donations
  end

  get '/help'    => "blood_requests#new"
  get '/ajutor'  => 'blood_requests#new'
  get '/donate'  => 'donations#new'
  get '/doneaza' => 'donations#new'
  get '/cases'   => 'blood_requests#index'

  get '/:action'    => 'home', :as => 'home'
  get '/case/:code' => 'shortlinks#show', :as => 'shortlink'
end
