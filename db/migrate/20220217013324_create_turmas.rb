class CreateTurmas < ActiveRecord::Migration[6.1]
  def change
    create_table :turmas do |t|
      t.string :nome, null: false
      t.boolean :ativa, default: true
      t.references :curso, null: false, foreign_key: true
      t.references :modulo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
