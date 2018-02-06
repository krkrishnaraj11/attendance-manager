class ChangeToOtmultIn < ActiveRecord::Migration[5.1]
  def change
    rename_column :workers, :otmult, :ot_multiplier
  end
end
