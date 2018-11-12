class CreateNotices < ActiveRecord::Migration[5.1]
  def change
    create_table :notices do |t|
      t.string :title, null: false
      t.text :notice_text, null:false

      t.timestamps
    end
  end
end
