class Createuser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, presence: true
      t.string :last_name, presence: true
      t.string :email, presence: true
      t.date :birth_date
      t.string :facebookDisplayName
      t.string :facebookUid
      t.string :facebookProfileImageURL
      t.string :username
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :password_hash, presence: true, length: { minimum: 6 }


      t.timestamps
    end
  end
end
