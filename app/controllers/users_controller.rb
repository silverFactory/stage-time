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
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      redirect_to root_path
    end
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :stage_name, :host, :pic, :bio,
       :email, :email_public, :facebook_link, :instagram_link, :youtube_link, :bandcamp_link, :spotify_link)
  end
end
