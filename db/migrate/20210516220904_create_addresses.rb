class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street_address_1
      t.string :street_address_2
      t.integer :zipcode

      t.timestamps
    end
  end
end
