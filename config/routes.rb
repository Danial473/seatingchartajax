SeatingChart::Application.routes.draw do

  root :to => "spots#index"

  resources :users
  resource :session
  resources :spots
  
  match '/login' => "sessions#new", :as => "login"   
  match '/logout' => "sessions#destroy", :as => "logout" 
  match '/removeme' => "spots#removeme"  
end
