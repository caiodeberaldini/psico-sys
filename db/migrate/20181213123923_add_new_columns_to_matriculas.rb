class AddNewColumnsToMatriculas < ActiveRecord::Migration[5.1]
  def up
    change_table :matriculas do |t|
      t.string :rg
      t.string :lugar_escolaridade
      t.string :escolaridade
      t.string :ano_escolaridade
      t.string :custo_transporte
      t.string :tempo_transporte
      t.string :acesso_internet
      t.string :declaracao_cor
      t.string :declaracao_sexo
      t.string :declaracao_trans
    end
  end

  def down
    change_table :matriculas do |t|
      t.remove :rg
      t.remove :lugar_escolaridade
      t.remove :escolaridade
      t.remove :ano_escolaridade
      t.remove :custo_transporte
      t.remove :tempo_transporte
      t.remove :acesso_internet
      t.remove :declaracao_cor
      t.remove :declaracao_sexo
      t.remove :declaracao_trans
    end
  end
end
