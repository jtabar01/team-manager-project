class CreatePlayerStatistics < ActiveRecord::Migration[5.0]
  def change
    create_table :player_statistics do |t|
      t.references :player_id, foreign_key: true
      t.string :statistic_type
      t.string :statistic_value
      t.date :date_recorded
      t.integer :stat_id

      t.timestamps
    end
  end
end
