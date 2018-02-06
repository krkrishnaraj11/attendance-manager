class CreateOvertimes < ActiveRecord::Migration[5.1]
  def change
    create_table :overtimes do |t|
      t.string :name
      t.date :date
      t.time :othour
      t.timestamps
    end
  end
end
