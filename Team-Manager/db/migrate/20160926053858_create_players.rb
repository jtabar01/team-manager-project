class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :player_coach_id, foreign_key: true
      t.integer :player_jersey_id
      t.date :team_join_date
      t.date :team_left_date

      t.timestamps
    end
  end
end
