class AddApostillesForeignKey < ActiveRecord::Migration[5.1]
  def change
    change_table :apostilles do |t|
      t.belongs_to :subject
    end
  end
end
