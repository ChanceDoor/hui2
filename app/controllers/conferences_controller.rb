#encoding:utf-8
class ConferencesController < ApplicationController
  #before_filter :authenticate_user!
  respond_to :json, :html
  def index
    @conferences = Servconf.find(:all,:conditions => "month(start_at) = #{Time.now.month}")
    @conferences = @conferences.group_by{|a| a.start_at.day}
    @month = (params[:month] || Time.now.month).to_i
    @year = (params[:year] || Time.now.year).to_i
    @shown_month = Date.civil(@year, @month)
    @event_strips = Servconf.event_strips_for_month(@shown_month)
    #confs.concat(current_user.conferences.find(:all,:conditions => "month(starttime) = #{Time.now.month}"))
    #p confs.inspect
    #@conferences = confs.group_by{|a| a.starttime.day}
    #@days = monthdays(Time.now.year,Time.now.month)
    respond_with(@conferences)
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
