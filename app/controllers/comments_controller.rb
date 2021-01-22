class CommentsController < ApplicationController
  def new
  end
  def create
    @comment = Comment.create(comment_params)
    redirect_to open_mic_support_path(@comment.support.open_mic_id, @comment.support_id)
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :support_id, :body)
  end
end
