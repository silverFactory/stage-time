class SessionsController < ApplicationController
  def index
  end
  def new
  end
  def create
    # if auth['uid'] != nil
    #   @user = User.find_by(uid: auth['uid'])
    #    #if there is an existing user with uid: auth['uid']
    #   if @user != nil
    #     session[:user_id] = @user.id
    #     redirect_to user_path(session[:user_id])
    #   else #starts a new user and redirect them to edit user page to fill in rest of info
    #     @user = User.new(uid: auth['uid'])
    #     render "users/edit"
    #     if @user.valid?
    #       @user.save
    #       session[:user_id] = @user.id
    #       redirect_to user_path(@user)
    #     else
    #       render "users/edit"
    #     end
    #   end
    # else #non-oauth login
        @user = User.find_by(username: params[:username])
        if @user == nil
          redirect_to signin_path, notice: "Invalid username."
        elsif @user.authenticate(params[:password])
          session[:user_id] = @user.id
          redirect_to user_path(session[:user_id])
        else
          redirect_to signin_path, notice: "Invalid password."
        end
    # end
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
