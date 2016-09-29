class CreatePersonEmailAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :person_email_addresses do |t|
      t.references :person, foreign_key: true
      t.references :email_address, foreign_key: true

      t.timestamps
    end
  end
end
