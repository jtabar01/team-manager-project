Rails.application.routes.draw do
  resources :organization_teams
  resources :people
  resources :teams
  resources :player_statistics
  resources :coaches
  resources :players
  resources :team_people
  resources :emails
  resources :phone_numbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
