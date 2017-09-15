class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :Username
      t.string :encrypted_password
      t.string :Email_Address
      t.string :Address_1
      t.string :Address_2
      t.string :Town
      t.string :county
      t.string :postcode

      t.timestamps
    end
  end
end
