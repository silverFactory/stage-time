class UpdatesController < ApplicationController
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

  def update_params
    params.require(:update).permit(:user_id, :open_mic_id, :body)
  end
end
