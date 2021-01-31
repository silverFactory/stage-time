class SupportsController < ApplicationController
  def new
    @support = Support.new
  end
  def new_missed_connection
    if session[:user_id] == nil
      redirect_to signin_path, notice: "Must be logged in to use this feature"
    else
      @support = Support.new
      @missed_connection = true
      @lend_a_hand = false
      @title = "Post a Missed Connection"
      render "new"
    end
  end
  def new_lend_a_hand
    if session[:user_id] == nil
      redirect_to signin_path, notice: "Must be logged in to use this feature"
    else
      @support = Support.new
      @lend_a_hand = true
      @missed_connection = false
      @title = "Ask For Help This Week"
      render "new"
    end
  end
  def create
    @support = Support.new(support_params)
    @support.user_id = session[:user_id]
    @support.open_mic_id = params[:open_mic_id]
    if @support.valid?
      @support.save
      redirect_to open_mic_support_path(params[:open_mic_id], @support)
    else
      if @support.missed_connection == true
        @title = "Post a Missed Connection"
      else
        @title = "Ask For Help This Week"
      end
      render "new"
    end
  end
  def show
    @support = Support.find(params[:id])
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
