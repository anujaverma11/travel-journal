class Createjournal < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.string :journal_name, presence: true
      t.integer :user_id

      t.timestamps
    end
  end
end
