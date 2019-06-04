class CommentsController < ApplicationController
  before_action :find_comment, only: %i[destroy]

  def index
  end

  def create
    @comment = Comment.create(comment_params)
    authorize @comment
    redirect_to root_path
  end

  def destroy
    @comment.destroy
    authorize @comment
    redirect_to root_path
  end

  private

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :todo_id)
  end
end
