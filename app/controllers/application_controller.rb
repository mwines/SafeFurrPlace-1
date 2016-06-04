class ApplicationController < ActionController::Base
  protect_from_forgery

  client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "MJnahhWKXhMAjUrX1t2XsWEBq"
    config.consumer_secret     = "BjS3gSFFJYn69I6swaCjAczOctVphyLtiShMnjQBbYHZUEkvET"
    config.access_token        = "164589007-utoJG4YyiKcxWeaC4yVztQaUNn3e722OEB1EaiaX"
    config.access_token_secret = "sqXvkdYW2whqElTk3Qj6snK2JfeovJYWOSzLHxjbhgfIv" 
   end



  def client.get_all_tweets(user)
        options = {:count => 3, :include_rts => true}
        user_timeline(user, options)
  end


    @tweet_news = client.get_all_tweets("tezzataz")
  
  protected
  def authenticate_user
  	unless session[:user_id]
  		redirect_to(:controller => 'sessions', :action => 'login')
  		return false
  	else
      # set current_user by the current user object
      @current_user = User.find session[:user_id] 
  		return true
  	end
  end

  #This method for prevent user to access Signup & Login Page without logout
  def save_login_state
    if session[:user_id]
            redirect_to(:controller => 'sessions', :action => 'home')
      return false
    else
      return true
    end
  end
end