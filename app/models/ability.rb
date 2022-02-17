# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(usuario)
    alias_action :create, :read, :update, to: :perms_without_delete

    usuario ||= Usuario.new
    
    if usuario.perfil == "Visualizador"
      can :read, :all
    elsif usuario.perfil == "Professor"
      can :read, :all
    elsif usuario.perfil == "Coordenador de Curso"
      can :read, :all 
    elsif usuario.perfil == "Diretor"
      can :read, :all 
    elsif usuario.perfil == "Gestor de TIC"
      can :manage, :all
    end

  end

end
