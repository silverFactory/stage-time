class CommentsController < ApplicationController
  def new
  end
  def create
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def missed_connection_params
    params.require(:comment).permit(:user_id, :open_mic_id, :missed_connection_id, :support_id, :body)
  end
end
