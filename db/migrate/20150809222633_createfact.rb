class Createfact < ActiveRecord::Migration

    def change
    create_table :facts do |t|
      t.integer :visitedplace_id
      t.string :fact_name
      t.string :fact_description

      t.timestamps
    end
  end
end
