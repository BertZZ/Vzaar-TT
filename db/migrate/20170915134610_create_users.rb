class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :town
      t.string :county
      t.string :postcode

      t.timestamps
    end
  end
end
