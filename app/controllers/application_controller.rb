class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    def after_sign_up_path_for(resource)
        photos_path
    end
    def after_sign_in_path_for(resource)
        photos_path
    end
end
