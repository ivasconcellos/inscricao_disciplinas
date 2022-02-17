class CreateDisciplinas < ActiveRecord::Migration[6.1]
  def change
    create_table :disciplinas do |t|
      t.string :nome, null: false
      t.string :tipo, null: false
      t.boolean :ativa, default: true
      t.references :turma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
