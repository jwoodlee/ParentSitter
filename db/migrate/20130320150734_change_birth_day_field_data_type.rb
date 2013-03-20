class ChangeBirthDayFieldDataType < ActiveRecord::Migration
  def up
  	remove_column :users, :birth_date
  	add_column :users, :birth_date, :date
  end

  def down
  	remove_column :users, :birth_date
  	add_column :users, :birth_date, :datetime
  end
end
