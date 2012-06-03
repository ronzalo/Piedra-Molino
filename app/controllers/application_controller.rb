class ApplicationController < ActionController::Base
  protect_from_forgery
  
  rescue_from CanCan::AccessDenied do |exception|
		redirect_to admin_dashboard_path, :alert => exception.message
	end

	def current_ability
		@current_ability ||= Ability.new(current_admin_user)
	end
	
	def current_user 
    @current_user ||= AdminUser.new(current_user)
  end
  
end
