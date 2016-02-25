class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :visitedplace_id
      t.string  :picture_name

    end
  end
end
