class CreateMatriculas < ActiveRecord::Migration[5.1]
  def change
    create_table :matriculas do |t|
      t.string :name
      t.date :birth_date
      t.string :cpf
      t.string :phone
      t.string :cell_phone
      t.string :address
      t.string :city
      t.string :state
      t.integer :scholarship_need
      t.string :email
      t.string :classe

      t.timestamps
    end
  end
end
