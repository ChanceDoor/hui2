#encoding:utf-8
ActiveAdmin.register Servconf do
  menu :label => "服务器会议列表"
  form :html => { :multipart => true } do |f|
    f.inputs "新增会议" do
      f.input :title
      f.input :start_at
      f.input :end_at
      f.input :location
      f.input :body
      f.input :figure, :as => :file
    end
    f.buttons
  end
end
