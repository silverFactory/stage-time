class UpdatesController < ApplicationController
  def new
    @update = Update.new
  end
  def create
    #need to grab user_id from session and open_mic_id from??
    # if this is a nested resource could get mic id from params hash
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
