class SupportsController < ApplicationController
  def new
  end
  def create
  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def support_params
    params.require(:support).permit(:user_id, :open_mic_id, :title, :body)
  end
end
