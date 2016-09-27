class CreateOrganizationTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :organization_teams do |t|
      t.references :organization_id, foreign_key: true
      t.references :team_id, foreign_key: true

      t.timestamps
    end
  end
end
