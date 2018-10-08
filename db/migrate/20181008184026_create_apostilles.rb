class CreateApostilles < ActiveRecord::Migration[5.1]
  def change
    create_table :apostilles do |t|
      t.string :description
      t.integer :subject_id

      t.timestamps
    end
  end
end
