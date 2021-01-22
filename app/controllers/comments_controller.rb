class CommentsController < ApplicationController
  def new
  end
  def create
    @comment = Comment.new(comment_params)
    byebug
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
