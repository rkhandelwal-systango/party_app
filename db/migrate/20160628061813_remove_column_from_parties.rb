class RemoveColumnFromParties < ActiveRecord::Migration
  def change
  	remove_column :parties, :user_id, :text
  end
end
