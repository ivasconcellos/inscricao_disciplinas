class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :authentication_keys => [:cpf]

  validates_uniqueness_of :cpf
  validates_presence_of :nome, :cpf, :email
  
  VISUALIZADOR = 'Visualizador'
  PROFESSOR = 'Professor'
  COORDENADOR = 'Coordenador de Curso'
  DIRETOR = 'Diretor'
  GESTOR_TIC = 'Gestor de TIC'

  PERFIL = [
    VISUALIZADOR,
    PROFESSOR,
    COORDENADOR,
    DIRETOR,
    GESTOR_TIC
  ]        

end
