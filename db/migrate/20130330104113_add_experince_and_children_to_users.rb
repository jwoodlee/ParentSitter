class AddExperinceAndChildrenToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :experience, :integer
  	add_column :users, :children, :integer
  end
end
