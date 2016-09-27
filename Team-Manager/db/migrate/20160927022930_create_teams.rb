class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :team_id
      t.integer :organization_id
      t.string :team_name
      t.boolean :competitive
      t.string :age_group

      t.timestamps
    end
  end
end
