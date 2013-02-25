class UserSessionsController < ApplicationController
  def new
    @user_session = UserSession.new
  end
  
  def create
    @user_session = UserSession.new(params[:user_session])
    
    if @user_session.save
      flash[:notice] = "Du ble logget inn."
      redirect_to params[:next] || admin_url
    else
      puts "Noe rart skjedde: #{@user_session.errors.inspect}"
      render :action => :new
    end
  end
  
  def destroy
    current_user_session.destroy
    flash[:notice] = "Du er nå logget ut."
    redirect_to params[:next] || new_user_session_url
  end
end