class Createlogindetail < ActiveRecord::Migration

    def change
    create_table :logindetails do |t|
      t.string :username, presence: true
      t.string :password_hash, presence: true, length: { minimum: 6 }
      t.integer :user_id

      t.timestamps
    end
  end
end
