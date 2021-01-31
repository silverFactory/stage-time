class UpdatesController < ApplicationController
  def new
    @update = Update.new
  end
  def create
    @update = Update.new(update_params)
    @update.open_mic_id = params[:open_mic_id]
    @update.save
    redirect_to open_mic_path(params[:open_mic_id])
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
