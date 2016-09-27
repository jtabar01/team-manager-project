class CreateCertifications < ActiveRecord::Migration[5.0]
  def change
    create_table :certifications do |t|
      t.references :person_id, foreign_key: true
      t.string :certification_name
      t.date :expiration_date
      t.text :note

      t.timestamps
    end
  end
end
