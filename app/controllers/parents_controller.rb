class ParentsController < ApplicationController
	def create_user
		@user = Parent.new(params['user'])
		@user.uid = session["uid"]
		@user.provider = session["provider"]
		if @user.save
      		redirect_to root_url, notice: 'Parent Registered Successfully.' 
	    else
		    redirect_to new_parent_path(:type => "parent")
     	end
	end
end
