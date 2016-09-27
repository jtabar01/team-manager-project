class CreateEventPropertyMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :event_property_maps do |t|
      t.references :event_id, foreign_key: true
      t.string :key
      t.string :value

      t.timestamps
    end
  end
end
