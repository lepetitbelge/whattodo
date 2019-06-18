class CommentsController < ApplicationController
  before_action :set_comment, only: %i[destroy]

  def index
  end

  def create
    @comment = Comment.create(comment_params)
    authorize @comment

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { render content_type: 'text/javascript' }
    end
  end

  def destroy
    @comment.destroy
    authorize @comment

    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { render content_type: 'text/javascript' }
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :todo_id)
  end
end
