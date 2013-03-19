class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :datetime
    add_column :users, :zipcode, :string
    add_column :users, :gender, :string
    add_column :users, :cell_phone, :string
    add_column :users, :type, :string
  end
end
