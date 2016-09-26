Rails.application.routes.draw do
  resources :players
  resources :people
  resources :team_people
  resources :emails
  resources :phone_numbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
