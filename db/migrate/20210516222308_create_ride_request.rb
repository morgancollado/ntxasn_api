class CreateRideRequest < ActiveRecord::Migration[6.1]
  def change
    create_table :ride_requests do |t|
      t.references :passenger, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true
      t.references :clinic, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.integer :status

      t.timestamps
    end
  end
end
