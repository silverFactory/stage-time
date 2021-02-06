class SessionsController < ApplicationController
  def index
  end
  def new
  end
  def create_with_facebook
    @user = User.find_by(email: auth.info.email)
    if @user != nil
      session[:user_id] = @user.id
      redirect_to user_path(session[:user_id])
    else
      @random_pass = SecureRandom.hex
      @user = User.new(email: auth.info.email, username: auth.info.email)
      render "new_from_facebook"
    end
  end
  def create
        @user = User.find_by(username: params[:username])
        if @user == nil
          redirect_to signin_path, notice: "Invalid username."
        elsif @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to user_path(session[:user_id])
        else
          redirect_to signin_path, notice: "Invalid password."
        end
  end
  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
