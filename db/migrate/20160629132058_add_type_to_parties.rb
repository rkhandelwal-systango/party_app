class AddTypeToParties < ActiveRecord::Migration
  def change
  	add_column :parties, :party_type, :string
  end
end
