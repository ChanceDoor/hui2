class Servconf < ActiveRecord::Base
  attr_accessible :body, :endtime, :location, :starttime, :title, :figure
  mount_uploader :figure, FigureUploader
end
