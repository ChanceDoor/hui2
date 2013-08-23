#encoding:utf-8
ActiveAdmin.register Servconf do
  menu :label => "服务器会议列表"
  form :html => { :multipart => true } do |f|
    f.inputs "新增会议" do
      f.input :title,:label=>'标题'
      f.input :start_at,:label=>'开始时间'
      f.input :end_at,:label=>'结束时间'
      f.input :location,:label=>'地址'
      f.input :body,:label=>'正文',:as => :kindeditor,:input_html => { :simple_mode => true }
      f.input :figure,:label=>'封面', :as => :file
    end
    f.buttons
  end
end
