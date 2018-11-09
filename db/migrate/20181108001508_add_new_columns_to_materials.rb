class AddNewColumnsToMaterials < ActiveRecord::Migration[5.1]
  def up
    change_table :materials do |t|
      t.integer :tipo
      t.string :filename
      t.string :content_type
      t.binary :data
    end
  end

  def down
    change_table :materials do |t|
      t.remove :tipo
      t.remove :filename
      t.remove :content_type
      t.remove :data
    end
  end
end
