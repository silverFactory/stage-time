class MissedConnectionsController < ApplicationController
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

  def missed_connection_params
    params.require(:missed_connection).permit(:user_id, :open_mic_id, :title, :body)
  end
end
