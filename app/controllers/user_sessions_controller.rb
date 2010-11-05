class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :login]
  before_filter :require_user, :only => :destroy
  
  def new
    @user_session = UserSession.new
  end
  
  def login
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful!"
      redirect_to users_url
    else
      render :action => :new
    end
  end
  
  def logout
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_to login_url
  end
end

