class CreateRideChangeLogs < ActiveRecord::Migration[6.1]
  def change
    create_table :ride_change_logs do |t|
      t.references :ride, null: false, foreign_key: true
      t.integer :prev_status
      t.integer :updated_status

      t.timestamps
    end
  end
end
