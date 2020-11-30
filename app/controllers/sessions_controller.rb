# frozen_string_literal: true

class SessionsController < ApplicationController
  def create
    @user = User.find_by(user_name: params[:user_name])
    if !@user.nil?
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def login; end

  def destroy
    session.destroy
    redirect_to root_path
  end
end
