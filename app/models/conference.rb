class Conference < ActiveRecord::Base
  belongs_to :user
  attr_accessible :body, :endtime, :level, :location, :starttime, :title,:figure
  mount_uploader :figure, FigureUploader
end
