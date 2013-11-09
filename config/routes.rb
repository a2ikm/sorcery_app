SorceryApp::Application.routes.draw do
  get "logout" => "sessions#destroy", as: "logout"
  get "login"  => "sessions#new",     as: "login"
  get "signup" => "staffs#new",       as: "signup"
  resources :staffs
  resources :sessions
  
  get "secret" => "home#secret",   as: "secret"
  root "home#index"
end
