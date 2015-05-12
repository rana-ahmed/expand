class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  private
  def current_admin
    if session[:admin_id] == nil
      false
    else
      true
    end
  end
  helper_method :current_admin

  private
  def check_admin
    if session[:admin_id] == nil
      redirect_to root_path, notice: 'You don\'t have permission for this area' 
    end
  end

  private
  def require_login
  	if !current_user
  		redirect_to :back, notice: 'You need to be signed in'
  	end
  end
end
