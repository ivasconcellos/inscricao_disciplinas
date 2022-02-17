class ApplicationController < ActionController::Base

    def current_ability
    	@current_ability ||= Ability.new(current_usuario)
  	end

end
