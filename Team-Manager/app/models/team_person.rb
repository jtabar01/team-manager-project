class TeamPerson < ApplicationRecord
  belongs_to :person_id
  belongs_to :team_id
end
