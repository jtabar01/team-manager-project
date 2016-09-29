class CreateJerseys < ActiveRecord::Migration[5.0]
  def change
    create_table :jerseys do |t|
      t.references :person, foreign_key: true
      t.references :team, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
