class RemoveColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :userid
    remove_column :supervisors, :projects 
    remove_column :contractors, :projects 
    remove_column :workers, :projects 
  end
end
