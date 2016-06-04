class WelcomeController < ApplicationController
  def index
    session.clear
  end

  	def new
        @welcome = Welcome.new
  	end

  	def create
    		@welcome = Welcome.new(welcome_params)
   
    	if @welcome.save
    		flash[:notice] = "You have been registered. Watch for an email from us."
        	redirect_to @welcome
        else
          render 'new'
  	end
  end

  	private
    	def welcome_params
      		params.require(:welcome).permit(:first_name, :last_name, :phoneNumber, :city, :state, :email, :count_pets)
    	end
end
