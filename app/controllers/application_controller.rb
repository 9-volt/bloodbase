class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def after_sign_in_path_for(resource)
    '/'
  end

  def check_admin!
    unless current_user && current_user.staff?
      redirect_to '/'
    end
  end
end
