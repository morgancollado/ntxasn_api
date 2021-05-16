class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :day
      t.time :begin_time
      t.time :end_time
      t.integer :status
      t.references :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
