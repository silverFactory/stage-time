class CommentsController < ApplicationController
  def new
  end
  def create
    if session[:user_id] == nil
      redirect_to signin_path, notice: "Must be logged in to use this feature"
    else
      @comment = Comment.new(comment_params)
      if @comment.valid?
        @comment.save
        redirect_to open_mic_support_path(@comment.support.open_mic_id, @comment.support_id)
      else
        @support = Support.find(@comment.support_id)
        render "supports/show"
      end
    end
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
