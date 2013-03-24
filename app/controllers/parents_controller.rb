class ParentsController < ApplicationController

	def new
		@record = Parent.new(session[:user])
		render :template => "users/new"
	end

	def create
		@record = Parent.new(params[:parent])
		if @record.save
    	redirect_to root_url, notice: 'Parent Registered Successfully.' 
    else
	    render :template => "users/new"
   	end
	end
end
