class AddNewColumnsToStudents < ActiveRecord::Migration[5.1]
  def up
    change_table :students do |t|
      t.string :rg
      t.string :numero_matricula
    end
  end

  def down
    change_table :students do |t|
      t.remove :rg
      t.remove :numero_matricula
    end
  end
end
