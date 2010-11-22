class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice] = "Login successful!"
      redirect_to users_url
    else                
      flash[:error] = "Account not found"
      render :action => :new
    end
  end
  
  def logout
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    render :action => :new
  end
end

