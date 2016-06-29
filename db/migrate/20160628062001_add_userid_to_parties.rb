class AddUseridToParties < ActiveRecord::Migration
  def change
  	add_column :parties, :user_id, :integer
  	  end
end
