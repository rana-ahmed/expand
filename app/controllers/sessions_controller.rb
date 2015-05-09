class SessionsController < ApplicationController
	def create
		user = User.catch_user(env["omniauth.auth"])
		session['user_id'] = user.id
		redirect_to :back, notice: 'You are now signed in'
	end

	def destroy
		session['user_id'] = nil
		redirect_to :back, notice: 'Good Bye'
	end
end