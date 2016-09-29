class CreatePostalAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :postal_addresses do |t|
      t.string :street_line_1
      t.string :street_line_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
