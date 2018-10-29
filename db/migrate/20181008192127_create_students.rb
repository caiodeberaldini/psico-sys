class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.date :birth_date, null: false
      t.string :cpf, null: false
      t.string :phone
      t.string :cell_phone, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.integer :scholarship, null: false
      t.integer :scholarship_need, null: false
      t.integer :situation, null: false
      t.string :email, null: false
      t.string :classe, null: false

      t.timestamps
    end
  end
end
