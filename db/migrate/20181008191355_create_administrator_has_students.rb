class CreateAdministratorHasStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :administrator_has_students do |t|
      t.integer :administrator_id
      t.integer :student_id

      t.timestamps
    end
  end
end
