class CreatePersonPostalAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :person_postal_addresses do |t|
      t.references :person, foreign_key: true
      t.references :postal_address, foreign_key: true

      t.timestamps
    end
  end
end
