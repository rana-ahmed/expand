class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  private
  def requir_login
  	if !current_user
  		redirect_to :back, notice: 'You need to be signed in'
  	end
  end
end
