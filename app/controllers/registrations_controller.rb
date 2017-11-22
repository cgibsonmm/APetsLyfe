class RegistrationsController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def after_sign_up_path_for(resource)
    "/user_profile/new"
  end

  def after_inactive_sign_up_path_for(resource)
    "/user_profile/new"
  end
end
