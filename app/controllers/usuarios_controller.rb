class UsuariosController < ApplicationController
  skip_before_action :iniciar_sesion, only: [ :new, :create ]

  def perfil
  	@posts = @usuario_actual.posts
  end

  def muro
  	@posts = Post.all
  end

  def amigos
  end

  def new
    @usuario = Usuario.new
  end

  def create
  	@usuario = Usuario.new parametros_de_usuario

  	if @usuario.save
  	  session[:usuario_id] = @usuario.id
  	  redirect_to muro_path, notice: "Has creado tu cuenta con exito"
  	else
  	  render 'new'
  	end

  end

  def edit
  end

  def destroy
  end

  private
    def parametros_de_usuario
      params.
        require(:usuario).
          permit( :nombre,
          		  :apellido,
          		  :correo,
          		  :password )
    end
end
