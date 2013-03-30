class SittersController < ApplicationController

	def new
		@record = Sitter.new(session[:user])
	end

	def create
		@record = Sitter.new(params[:sitter])
		if @record.save
	  	redirect_to root_url, notice: 'Sitter Registered Successfully.' 
	  else
	    render :template => "new"
    end
	end
end
