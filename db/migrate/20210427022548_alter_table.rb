class AlterTable < ActiveRecord::Migration[6.0]
  def change
  	add_column :employees,:salary,:integer
  	rename_column :employees,:name,:emp_name
  	add_column :books,:price,:float
  	remove_timestamps :employees
  end
end
