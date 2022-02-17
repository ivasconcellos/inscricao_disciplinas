class CreateModulos < ActiveRecord::Migration[6.1]
  def change
    create_table :modulos do |t|
      t.string :nome
      t.boolean :ativo

      t.timestamps
    end
  end
end
