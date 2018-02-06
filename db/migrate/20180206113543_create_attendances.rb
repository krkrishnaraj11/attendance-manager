class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.string :name
      t.date :date
      t.string :status
      t.timestamps
    end
  end
end
