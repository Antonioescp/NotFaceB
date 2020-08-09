class PostsController < ApplicationController

  def show
    @post = Post.find_by id: params[:id]

    unless @post
      redirect_to muro_path, notice: "Se borro con exito!"
    end
  end

  def create
    @usuario_actual.posts.create! contenido: params[:post][:contenido]
    redirect_back fallback_location: muro_path, notice: "Tu publicacion se creó con exito"
  end

  def destroy
    @post = Post.find params[:id]
    @post.destroy
    redirect_back fallback_location: root_path, notice: "Borrado con exito!"
  end
end
