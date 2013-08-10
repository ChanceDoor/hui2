#encoding:utf-8
class ConferencesController < ApplicationController
  before_filter :authenticate_user!

  def index
    confs = Servconf.find(:all,:conditions => "starttime >= '#{Time.now}'")
    confs.concat(current_user.conferences.find(:all,:conditions => "starttime >= '#{Time.now}'"))
    p confs.inspect
    @conferences = confs.group_by{|a| a.starttime.day}
    
  end
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = current_user
    @conference = @user.conferences.new(params[:conference])
    respond_to do |format|
      if @conference.save
        format.html {redirect_to user_conferences_path,notice:'上传成功!'}
        format.json {render_text "上传成功!" }
      else
        format.html {redirect_to user_conferences_path,error:'上传失败'}
        format.json {render_text "上传失败!" }
      end 
    end
  end
end
