class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.references :passenger, null: false, foreign_key: true
      t.references :driver, null: false, foreign_key: true
      t.references :ride_request, null: false, foreign_key: true
      t.integer :status
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
