class ApplicationController < ActionController::Base
before_action :name_devise_param, if: :devise_controller?

  def name_devise_param
    devise_parameter_sanitizer.permit(:sign_up) do |rider|
      rider.permit(:name, :email, :password, :password_confirmation)
    end
  end

end
