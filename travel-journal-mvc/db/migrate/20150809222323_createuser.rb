class Createuser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, presence: true
      t.string :last_name, presence: true
      t.string :email, presence: true
      t.string :facebook_user_name
      t.integer :birth_date

      t.timestamps
    end
  end
end
