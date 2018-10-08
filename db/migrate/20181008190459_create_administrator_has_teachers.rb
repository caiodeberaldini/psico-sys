class CreateAdministratorHasTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :administrator_has_teachers do |t|
      t.integer :administrator_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
