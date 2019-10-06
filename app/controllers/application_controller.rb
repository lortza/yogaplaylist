# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!

  def require_admin
    return if current_user_admin?

    sign_out current_user
    redirect_to new_user_session_path, alert: 'Must be Admin to access this area'
  end

  def current_user_admin?
    current_user&.admin?
  end
  helper_method :current_user_admin?
end
