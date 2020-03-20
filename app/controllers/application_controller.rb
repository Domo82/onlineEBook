class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, notice: "Sorry, You are not authorized to access the EDIT option
"
  end
end
