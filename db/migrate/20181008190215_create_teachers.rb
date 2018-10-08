class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.date :birth_date
      t.string :cpf
      t.string :address
      t.string :city
      t.string :state
      t.string :phone
      t.string :cell_phone
      t.string :field
      t.string :email
      t.string :username
      t.integer :subject_id

      t.timestamps
    end
  end
end
