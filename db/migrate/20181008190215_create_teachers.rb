class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name, null: false
      t.date :birth_date, null: false
      t.string :cpf, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :phone
      t.string :cell_phone, null: false
      t.string :disciplina, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
