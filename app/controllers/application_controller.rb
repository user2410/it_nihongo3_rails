class ApplicationController < ActionController::Base
	before_action :setup_header_vars

	private
		def setup_header_vars
			@signed_in = user_signed_in?
			if @signed_in
				@user = current_user
			end
		end
end
