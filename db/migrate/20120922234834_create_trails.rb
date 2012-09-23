class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :title
      t.string :creator
      t.float :s_lat, precision: 8
      t.float :s_long, precision: 8
      t.float :e_lat, precision: 8
      t.float :e_long, precision: 8
      t.integer :difficulty

      t.timestamps
    end
  end
end
