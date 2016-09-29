Rails.application.routes.draw do
  resources :jerseys
  resources :organization_teams
  resources :organizations
  resources :teams
  resources :person_email_addresses
  resources :person_phones
  resources :person_postal_addresses
  resources :email_addresses
  resources :phones
  resources :postal_addresses
  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
