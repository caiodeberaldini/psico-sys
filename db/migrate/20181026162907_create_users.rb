class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false, unique: true
      t.string :password_digest, null: false
      t.integer :papel, default: 0, null: false
      t.references :role, polymorphic: true, index: true

      t.timestamps
    end
  end
end
