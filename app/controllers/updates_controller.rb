class UpdatesController < ApplicationController
  def new
    @update = Update.new
  end
  def create
    #need to grab user_id from session and open_mic_id from??
    # if this is a nested resource could get mic id from params hash
    @update = Update.new(update_params)
    @update.user_id = session[:user_id]
    @update.open_mic_id = params[:open_mic_id]
    @update.save
    redirect_to open_mic_show(params[:open_mic_id])
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def update_params
    params.require(:update).permit(:user_id, :open_mic_id, :body)
  end
end
