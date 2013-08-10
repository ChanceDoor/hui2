class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => '你没有此权限'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def update
    authorize! :update, @user, :message => '你没有此权限'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to users_path, :notice => "修改成功"
    else
      redirect_to users_path, :alert => "修改失败"
    end
  end
    
  def destroy
    authorize! :destroy, @user, :message => '你没有此权限'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "账号已删除"
    else
      redirect_to users_path, :notice => "你不能删除自己"
    end
  end
end
