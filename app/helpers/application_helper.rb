module ApplicationHelper

  # Added flash styling for bootstrap
  def alert_for(flash_type)
  {
    success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-info'
  } [flash_type.to_sym] || flash_type.to_s
  end

  def signed_in_link
    if user_signed_in?
      user_pets_path(current_user)
    else
      root_path
    end
  end
end
