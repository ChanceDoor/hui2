class Conference < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :endtime, :level, :location, :starttime, :title,:figure
  mount_uploader :figure, FigureUploader

  def start_time
    starttime
  end
end
