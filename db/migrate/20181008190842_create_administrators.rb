class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators do |t|
      t.string :email, null: false

      t.timestamps
    end
  end
end
