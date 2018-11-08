class AddNewColumnsToApostilles < ActiveRecord::Migration[5.1]
  def up
    change_table :apostilles do |t|
      t.string :filename
      t.string :content_type
      t.binary :data
    end
  end

  def down
    change_table :apostilles do |t|
      t.remove :filename
      t.remove :content_type
      t.remove :data
    end
  end
end
