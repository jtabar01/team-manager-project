class OrganizationTeam < ApplicationRecord
  belongs_to :organization
  belongs_to :team
end
