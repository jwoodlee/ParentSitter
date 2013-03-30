class ParentsController < ApplicationController

	def new
		@record = Parent.new(session[:user])
	end

	def create
		@record = Parent.new(params[:parent])
		if @record.save
    	redirect_to root_url, notice: 'Parent Registered Successfully.' 
    else
	    render :template => "new"
   	end
	end
end
