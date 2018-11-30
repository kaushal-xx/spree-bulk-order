class ApplicationController < ActionController::Base
	before_action :check_current_user

	def check_current_user
		if spree_current_user.blank? && params[:controller] != 'spree/user_sessions'
			redirect_to spree_login_path
		end
	end
end
