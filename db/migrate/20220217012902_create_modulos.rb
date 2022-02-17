class CreateModulos < ActiveRecord::Migration[6.1]
  def change
    create_table :modulos do |t|
      t.string :nome, null: false
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
