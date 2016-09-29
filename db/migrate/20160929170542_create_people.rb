class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.integer :height_in_inches
      t.integer :weight_in_pounds

      t.timestamps
    end
  end
end
