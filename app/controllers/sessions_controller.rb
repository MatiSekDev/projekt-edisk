class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Logged In succesfully"
    else
      flash.alert = "Invalid email or password"
      render :new
    end

  end

  def destroy
    session[:user_id] = nil
    flash.notice = "You successfully logged out"
    redirect_to root_path
  end
end
