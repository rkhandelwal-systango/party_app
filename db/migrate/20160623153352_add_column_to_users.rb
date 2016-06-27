class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
  	add_column :users, :phone_no, :text
  	add_column :users, :address, :text
  	add_column :users, :state, :string
  	add_column :users, :city, :string
  	add_column :users, :pincode, :text
  end
end
