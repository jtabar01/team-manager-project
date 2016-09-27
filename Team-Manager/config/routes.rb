Rails.application.routes.draw do
  resources :people
  resources :certifications
  resources :parent_children
  resources :event_property_maps
  resources :event_types
  resources :events
  resources :organizations
  resources :organization_teams
  resources :teams
  resources :player_statistics
  resources :coaches
  resources :players
  resources :team_people
  resources :emails
  resources :phone_numbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
