class ApplicationController < ActionController::Base

  def verify_admin
    unless admin_user_signed_in?
      redirect_to '/admin'
    end
  end

end
