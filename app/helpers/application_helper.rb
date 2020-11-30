# frozen_string_literal: true

module ApplicationHelper
  def log_or_not
    log_status = []
    if logged_in?
      log_status [0] = current_user.user_name
      log_status [1] = link_to 'Log Out', logout_path, method: :delete, class: 'list-group-item list-group-item-action bg-blue'
      log_status [2] = link_to 'All My Items', my_items_path(current_user.id), class: 'list-group-item list-group-item-action bg-blue'
      log_status [3] = link_to 'My External Items', my_external_items_path(current_user.id), class: 'list-group-item list-group-item-action bg-blue'
      log_status [4] = link_to 'All Groups', groups_path, class: 'list-group-item list-group-item-action bg-blue'
    else
      log_status [0] = link_to 'Log in', '/login', class: 'list-group-item list-group-item-action bg-blue'
      log_status [1] = link_to 'Create User', new_user_path, class: 'list-group-item list-group-item-action bg-blue'
    end
    log_status
  end
end
