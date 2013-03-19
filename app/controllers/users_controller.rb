class UsersController < ApplicationController

	def new
		@type = params['type']
		@user = User.new
	end

	def create_user
		case params['type']
			when 'parent'
				@user = Parent.new(params['user'])
			else
				@user = Sitter.new(params['user'])
			end 
			@user.uid = session["devise.facebook_data"]["uid"]
			@user.provider = session["devise.facebook_data"]["provider"]
			if @user.save
      			redirect_to root_url, notice: 'User Registered Successfully.' 
	        else
	        	@type = params['type']
		        render action: "new"
     		end
	end
	
end
