# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :logged_in?
  helper_method :login?
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def login?
    redirect_to login_path if current_user.nil?
  end
end
