class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birth_date
      t.string :cpf
      t.string :phone
      t.string :cell_phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :scholarship
      t.integer :scholarship_need
      t.integer :situation
      t.string :email
      t.string :username
      t.string :password
      t.string :class

      t.timestamps
    end
  end
end
