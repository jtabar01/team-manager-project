class CreateCoaches < ActiveRecord::Migration[5.0]
  def change
    create_table :coaches do |t|
      t.references :person_id, foreign_key: true
      t.string :coach_type
      t.date :coach_year_began
      t.date :coach_year_ended
      t.integer :coach_id

      t.timestamps
    end
  end
end
