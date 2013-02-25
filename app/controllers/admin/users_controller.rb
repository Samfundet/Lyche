class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Brukeren ble opprettet."
      redirect_to admin_users_path
    else
      render :new
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(params[:user])
      flash[:notice] = "Brukeren ble endret."
      redirect_to admin_users_path
    else
      render :edit
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    
    redirect_to admin_users_path, notice: "Brukeren ble slettet."
  end
end
