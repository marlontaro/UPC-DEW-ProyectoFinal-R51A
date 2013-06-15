class CommentsController < ApplicationController
  def create

    @concerts = Concert.find(params[:concert_id])
    @comment = @concerts.comments.new(params[:comment])
    @comment.user_id = current_user.id
    @ruta = ""
    @ruta = "http://localhost:3000/rsearch?id=#{params[:concert_id]}"
    @comment.save
    redirect_to @ruta
  end
end
