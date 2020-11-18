module ApplicationHelper
  def log_or_not
    log_status = []
  if logged_in?
    log_status [0] = link_to 'Log Out', logout_path, method: :delete
  else
    log_status [0] = link_to 'Log in', '/login'
    log_status [1] = link_to 'Create User', new_user_path
  end
    log_status
  end
end
