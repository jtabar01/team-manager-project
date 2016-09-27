class OrganizationTeam < ApplicationRecord
  belongs_to :organization_id
  belongs_to :team_id
end
