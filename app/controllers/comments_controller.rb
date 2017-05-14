class CommentsController < ApplicationController
  before_action  :authenticate_user!
  def create
    @plat = Plat.find(params[:plat_id])
    @comment = Comment.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.plat_id =  @plat.id

    if @comment.save
      redirect_to plat_path(@plat)
    else
      render "new"
    end
  end
end
