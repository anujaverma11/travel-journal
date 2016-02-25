class Createvisitedplace < ActiveRecord::Migration

  def change
    create_table :visitedplaces do |t|
      t.integer :journal_id
      t.string :place_name, presence: true
      t.string :location, presence: true
      t.string :place_description
      t.string :visited_date
      t.string :visited_time

      t.timestamps
    end
  end
end
