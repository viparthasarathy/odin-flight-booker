Rails.application.routes.draw do
  resources :flights
  root 'flight#index'


end
