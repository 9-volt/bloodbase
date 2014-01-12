Donez::Application.routes.draw do
  root :to => "home#index"

  devise_for :users

  resources :users, :donations
  resources :blood_requests do
    resources :case_donations
  end

  get '/help'    => "blood_requests#new"
  get '/ajutor'  => 'blood_requests#new'
  get '/donate'  => 'donations#new'
  get '/doneaza' => 'donations#new'
  get '/cases'   => 'blood_requests#index'

  get '/questionnaire'           => 'questionnaire#index',     :as => 'questionnaire'
  get '/questionnaire/next_item' => 'questionnaire#next_item', :as => 'next_item'

  get '/:action'    => 'home', :as => 'home'
  get '/case/:code' => 'shortlinks#show', :as => 'shortlink'

end
