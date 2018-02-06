class ChangeColumnsIn < ActiveRecord::Migration[5.1]
  def change
    rename_column :overtimes, :othour, :ot_hour
  end
end
