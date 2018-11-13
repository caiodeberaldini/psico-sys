class CreateArchives < ActiveRecord::Migration[5.1]
  def change
    create_table :archives do |t|
      t.string :description
      t.integer :tipo
      t.string :filename
      t.string :content_type
      t.binary :data

      t.timestamps
    end
  end
end
