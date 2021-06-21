class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :first_name
      t.text :last_name
      t.integer :phone_number
      t.text :email
      t.text :password_digest

      t.timestamps
    end
  end
end
