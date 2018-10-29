class AddMaterialsForeignKey < ActiveRecord::Migration[5.1]
  def change
    change_table :materials do |t|
      t.belongs_to :subjects
    end
  end
end
