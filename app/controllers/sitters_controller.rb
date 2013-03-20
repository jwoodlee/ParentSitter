class SittersController < ApplicationController
	def create_user
		@user = Sitter.new(params['user'])
		@user.uid = session["uid"]
		@user.provider = session["provider"]
		if @user.save
      		redirect_to root_url, notice: 'Sitter Registered Successfully.' 
	    else
		    redirect_to new_parent_path(:type => "sitter")
     	end
	end
end
