class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :event_id
      t.references :event_type, foreign_key: true
      t.date :event_datetime
      t.references :team_id, foreign_key: true
      t.integer :created_by
      t.boolean :open_to_public

      t.timestamps
    end
  end
end
