class Turma < ApplicationRecord
  belongs_to :curso
  belongs_to :modulo

  validates_presence_of :nome
  validates_uniqueness_of :nome

  self.per_page = 10
end
