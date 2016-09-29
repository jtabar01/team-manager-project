class CreatePersonPhones < ActiveRecord::Migration[5.0]
  def change
    create_table :person_phones do |t|
      t.references :person, foreign_key: true
      t.references :phone, foreign_key: true

      t.timestamps
    end
  end
end
