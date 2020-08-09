class SesionesController < ApplicationController
  skip_before_action :iniciar_sesion

  def create
  	@usuario = Usuario.find_by correo: params[:correo]
  	@contra = params[:password]

  	if @usuario && @usuario.authenticate(@contra)
  	  session[:usuario_id] = @usuario.id
  	  redirect_to muro_path, notice: "Iniciaste sesion correctamente"
  	else
  	  render 'new'
  	end
  end

  def destroy
  	reset_session
  	redirect_to root_path, notice: "Cerraste sesion con exito"
  end

end
