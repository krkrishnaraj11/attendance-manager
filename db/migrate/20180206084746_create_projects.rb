class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :supervisors, array: true, default: []
      t.float :salary
      t.time :over_time
      t.float :total_cost
      t.timestamps
    end
  end
end
