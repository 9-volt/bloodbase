Donez::Application.routes.draw do
  root :to => "home#index"

  devise_for :users
  resources :users, :blood_requests, :donations

  get '/help' => "blood_requests#new"
  get '/ajutor' => 'blood_requests#new'
  get '/donate' => 'donations#new'
  get '/doneaza' => 'donations#new'

  get '/questionnaire' => 'questionnaire#index', :as => 'questionnaire'
  get '/questionnaire/next_item' => 'questionnaire#next_item', :as => 'next_item'

  get '/:action' => 'home', :as => 'home'
  get '/case/:code' => 'shortlinks#show', :as => 'shortlink'

end
