class SupportsController < ApplicationController
  def new
    @support = Support.new
  end
  def new_missed_connection
    @support = Support.new
    @missed_connection = true
    @lend_a_hand = false
    render "new"
  end
  def new_lend_a_hand
    @support = Support.new
    @lend_a_hand = true
    @missed_connection = false
    render "new"
  end
  def create
    @support = Support.new(support_params)
    @support.user_id = session[:user_id]
    @support.open_mic_id = params[:open_mic_id]
    @support.save
    redirect_to open_mic_support_path(params[:open_mic_id], @support)
  end
  def show
    @support = Support.find(params[:id])
    #grab all comments for this post
    #empty comment object for the new/form
    @comment = Comment.new
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def support_params
    params.require(:support).permit(:user_id, :open_mic_id, :title, :body, :missed_connection, :lend_a_hand)
  end
end
