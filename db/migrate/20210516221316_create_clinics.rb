class CreateClinics < ActiveRecord::Migration[6.1]
  def change
    create_table :clinics do |t|
      t.string :name
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
