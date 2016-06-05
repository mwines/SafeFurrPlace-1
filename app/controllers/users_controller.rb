class UsersController < ApplicationController
  
  before_filter :save_login_state, :only => [:new, :create]

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
   
    if @user.update(user_params)
      redirect_to '/users'
    else
      render 'edit'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
      #Signup Form
      @user = User.new     
  end

   def create
    	@user = User.new(user_params)
    	if @user.save
    		flash[:notice] = "You Signed up successfully"
        flash[:color]= "valid"
      else
        flash[:notice] = "Form is invalid"
        flash[:color]= "invalid"
      end
      render "new"
    end

    private
    def user_params
      params.require(:user).permit(:privileges, :firstname, :lastname, :username, :email, :password, :password_confirmation)
    end

end
