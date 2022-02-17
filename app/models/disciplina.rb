class Disciplina < ApplicationRecord
  belongs_to :turma
  has_one :curso, through: :turma

  validates_presence_of :nome, :tipo
  validates_uniqueness_of :nome, :scope => :turma_id

  self.per_page = 10
end
