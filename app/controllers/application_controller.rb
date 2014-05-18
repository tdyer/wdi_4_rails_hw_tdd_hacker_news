class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    # resource in a User object
    # Go back to failed location, stored in session. Or go to the user's show action
    stored_location_for(resource) || user_url(resource) || signed_in_root_path(resource)

  end
end
