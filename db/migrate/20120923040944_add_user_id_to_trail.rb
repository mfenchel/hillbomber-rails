class AddUserIdToTrail < ActiveRecord::Migration
  def change
  	add_column :trails, :user_id, :integer
  	add_index :trails, :user_id
  end
end
