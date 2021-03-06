class SessionsController < ApplicationController
  def new
  end

  def create
    staff = login(params[:username], params[:password], params[:remember_me])
    if staff
      redirect_back_or_to root_url, notice: "Logged in!"
    else
      flash.now.alert = "Username or password was invalid."
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: "Logged out!"
  end
end
