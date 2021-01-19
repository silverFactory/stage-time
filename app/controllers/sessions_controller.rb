class SessionsController < ApplicationController
  def index
  end
  def new
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
end
