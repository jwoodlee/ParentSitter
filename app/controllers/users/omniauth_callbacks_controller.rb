class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.find_for_facebook_oauth(request.env["omniauth.auth"], current_user)

    if @user.present?
      if @user.type == params[:state].capitalize
        sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
        set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
      else
        redirect_to root_url
        flash[:notice] = "You have registered as #{@user.type}.Try with the other link available"
      end
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      puts "params#{params}"
      redirect_to new_user_url(:type => params[:state])
    end
  end
end