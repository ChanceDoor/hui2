#encoding:utf-8
class ConferencesController < ApplicationController
  before_filter :authenticate_user!
  def index
    confs = Servconf.find(:all,:conditions => "month(starttime) = #{Time.now.month}")
    confs.concat(current_user.conferences.find(:all,:conditions => "month(starttime) = #{Time.now.month}"))
    p confs.inspect
    @conferences = confs.group_by{|a| a.starttime.day}
    @days = monthdays(Time.now.year,Time.now.month)
  end

  def show
    @conference = Servconf.find(params[:id])
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

  private
  def monthdays(y,m)
    days = [31,28,31,30,31,30,31,31,30,31,30,31]
    if (y%4 == 0 && y % 100)||(y % 400==0) 
      days[1] = 29
    end
    return days[m-1]
  end
end
