class CreateLocais < ActiveRecord::Migration[6.1]
  def change
    create_table :locais do |t|
      t.string :nome, null: false
      t.boolean :ativo, default: true

      t.timestamps
    end
  end
end
