class CreateCursos < ActiveRecord::Migration[6.1]
  def change
    create_table :cursos do |t|
      t.string :nome, null: false
      t.boolean :ativo, default: true
      t.references :local, null: false, foreign_key: true

      t.timestamps
    end
  end
end
