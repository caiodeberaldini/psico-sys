class AddEgressoAndRefugiadosColumnsToMatriculas < ActiveRecord::Migration[5.1]
  def up
    change_table :matriculas do |t|
      t.string :egresso
      t.string :refugiado
    end
  end

  def down
    change_table :matriculas do |t|
      t.remove :egresso
      t.remove :refugiado
    end
  end
end
