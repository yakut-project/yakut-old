class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    "/#{resource.class.to_s.pluralize}/welcome".downcase
  end

  protected

	def configure_permitted_parameters
    	devise_parameter_sanitizer.for(:sign_up) do |u| 
    		u.permit(:email, :password, :password_confirmation, :website,
    				:stackoverflow, :github, :bitbucket,
    				:blog, :twitter, :name, :surname, 
    				:bio, :birthday, :gender) 
    	end

      devise_parameter_sanitizer.for(:account_update) do |u| 
        u.permit(:email, :password, :password_confirmation, :website,
            :stackoverflow, :github, :bitbucket,
            :blog, :twitter, :name, :surname, 
            :bio, :birthday, :gender, :current_password) 
      end
    end
end
