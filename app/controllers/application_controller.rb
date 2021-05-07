class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :authenticate_user!
    def after_sign_up_path_for(resource)
        photos_path
    end
    def after_sign_in_path_for(resource)
        photos_path
    end
    
     protected
        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password)}
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :current_password)}
        end

end
