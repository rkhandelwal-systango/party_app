class AddColumnToParties < ActiveRecord::Migration
  def change
    add_column :parties, :title, :string
  	add_column :parties, :no_of_person, :text
  	add_attachment :users, :avatar
  	add_column :parties, :party_date, :date
  	add_column :parties, :time, :time
  	add_column :parties, :venue, :string
  	add_column :parties, :user_id, :text
  	add_column :parties, :status, :string
    add_column :parties, :comment, :string
  end
end
