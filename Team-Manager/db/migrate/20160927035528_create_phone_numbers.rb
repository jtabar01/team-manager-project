class CreatePhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_numbers do |t|
      t.string :phone
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
