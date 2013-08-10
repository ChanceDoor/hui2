class ApplicationController < ActionController::Base
  protect_from_forgery
  

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end


  def after_sign_in_path_for(user)
    p "======"
    p user
    if user['name'] 
      p "1"
      user_conferences_path(user)
    else
      p "2"
      admin_root_path
    end
  end
end
