class Local < ApplicationRecord
    has_many :cursos, dependent: :destroy

    validates_presence_of :nome
    validates_uniqueness_of :nome

    self.per_page = 10
end
