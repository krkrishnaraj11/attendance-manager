class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :name
      t.float :wage
      t.string :contractor
      t.string :designation
      t.string :scheme
      t.float :otmult
      t.float :otinc
      t.text :projects, array: true, default: []
      t.float :advance
      t.float :deduction
      t.float :pf
      t.time :overtime
      t.float :incentive
      t.float :otamount
      t.float :inceamount
      t.timestamps
    end
  end
end
