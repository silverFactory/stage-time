class SupportsController < ApplicationController
  def new
    @support = Support.new
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
