class RegistrationsController < Devise::RegistrationsController

    protected

    def after_sign_up_path_for(user)
      posts_path
    end
  
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(
        :sign_up, keys: [:username, :email, :password, :password_confirmation]
      )
    end
end
