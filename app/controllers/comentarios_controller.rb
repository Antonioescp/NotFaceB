class ComentariosController < ApplicationController

  def create
    @post = Post.find params[:post_id]
    @comentario = @post.comentarios.new

    @comentario.contenido = params[:comentario][:contenido]
    @comentario.usuario_id = @usuario_actual.id

    if @comentario.save
      redirect_back fallback_location: muro_path, notice: "Has comentado!"
    else
      redirect_back fallback_location: muro_path, notice: "No se ha podido publicar tu comentario :("
    end
  end

  def destroy
    @comentario = Comentario.find params[:id]
    @comentario.destroy
    redirect_back fallback_location: muro_path, notice: "Borrado con exito!"
  end
end
