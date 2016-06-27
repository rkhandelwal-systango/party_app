class AddAvatarToParties < ActiveRecord::Migration
  def change
  	add_attachment :parties, :avatar
  end
end
