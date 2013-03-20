class UsersController < ApplicationController

	def new
		@type = params['type']
		@user = User.new(session[:user])
		if params['type'] == "parent"
			@url = parents_path
		elsif params['type'] == "sitter"
			@url = sitters_path
		end
	end	
	
end
