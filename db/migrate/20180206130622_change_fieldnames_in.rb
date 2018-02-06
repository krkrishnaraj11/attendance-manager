class ChangeFieldnamesIn < ActiveRecord::Migration[5.1]
  def change
    rename_column :workers, :otinc, :ot_incentive
    rename_column :workers, :otamount, :ot_amount
    rename_column :workers, :inceamount, :ince_amount ``
  end
end
