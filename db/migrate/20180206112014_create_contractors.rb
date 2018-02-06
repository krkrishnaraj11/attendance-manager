class CreateContractors < ActiveRecord::Migration[5.1]
  def change
    create_table :contractors do |t|
      t.string :name
      t.text :projects, array: true, default: []
      t.timestamps
    end
  end
end
