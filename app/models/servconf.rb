class Servconf < ActiveRecord::Base
  attr_accessible :body, :end_at, :location, :start_at, :title, :figure
  mount_uploader :figure, FigureUploader
  has_event_calendar
end
