class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.string :email
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
