class RemoveColumnsIn < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :supervisors
  end
end
