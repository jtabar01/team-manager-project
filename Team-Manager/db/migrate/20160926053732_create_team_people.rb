class CreateTeamPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :team_people do |t|
      t.references :person_id, foreign_key: true
      t.references :team_id, foreign_key: true

      t.timestamps
    end
  end
end
