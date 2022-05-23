class ApplicationController < ActionController::Base

  # before_action :authenticate_user!
  # skip_before_action :authenticate_user!, only: :home

  # before_action :configure_permitted_parameters, if: :devise_controller?

  # add_flash_types :booking

  def configure_permitted_parameters
      # For additional fields in app/views/devise/registrations/new.html.erb
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname, :owner])
  end
end
