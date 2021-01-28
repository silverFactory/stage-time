class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end
  def show
      @user = User.find(params[:id])
      @current_user = session[:user_id]
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end
  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :stage_name, :host, :pic, :bio,
       :email, :email_public, :facebook_link, :instagram_link, :youtube_link, :bandcamp_link, :spotify_link)
  end
end
