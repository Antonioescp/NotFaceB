class ApplicationController < ActionController::Base
  before_action :buscar_usuario, :iniciar_sesion, :cargar_personas

  protected
    def buscar_usuario
      if session[:usuario_id]
        @usuario_actual = Usuario.find session[:usuario_id]
      else
      	@usuario_actual = nil
      end
    end

    def iniciar_sesion
      unless session[:usuario_id]
      	redirect_to login_path, notice: "Inicia sesion primero!"
      end
    end

    def cargar_personas
      @personas = Usuario.all
    end
end
