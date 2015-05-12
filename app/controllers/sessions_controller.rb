class SessionsController < ApplicationController
	def create
		user = User.catch_user(env["omniauth.auth"])
		session['user_id'] = user.id
		if Admin.exists?(user_id: user.id)
			session['admin_id'] = true
		end
		redirect_to :back, notice: 'You are now signed in'
	end

	def destroy
		session['user_id'] = nil
		session['admin_id'] = nil
		redirect_to root_path, notice: 'Good Bye '
	end
end