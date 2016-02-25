class Createaddress < ActiveRecord::Migration

    def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.integer :user_id

      t.timestamps
    end
  end
end
