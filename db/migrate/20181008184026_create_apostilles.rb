class CreateApostilles < ActiveRecord::Migration[5.1]
  def change
    create_table :apostilles do |t|
      t.string :description

      t.timestamps
    end
  end
end
