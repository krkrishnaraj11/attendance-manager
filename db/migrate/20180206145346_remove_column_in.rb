class RemoveColumnIn < ActiveRecord::Migration[5.1]
  def change
    remove_column :attendances, :name
  end
end
