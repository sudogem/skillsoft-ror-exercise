class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :student_id
      t.integer :level

      t.timestamps
    end
  end
end
