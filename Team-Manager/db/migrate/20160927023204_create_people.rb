class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.integer :person_id
      t.string :first_name
      t.string :last_name
      t.string :addr_route
      t.string :addr_city
      t.string :addr_state
      t.integer :addr_zip
      t.string :username
      t.string :pass_hash
      t.string :pass_salt
      t.text :bio
      t.date :birth_date
      t.string :gender
      t.integer :height_in_inches
      t.integer :weight_in_pounds
      t.string :shoe_size

      t.timestamps
    end
  end
end
