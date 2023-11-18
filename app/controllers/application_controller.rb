class ApplicationController < ActionController::Base
  before_action :authenticate
  helper_method :logged_in?, :current_user

  private

  def logged_in?
    # If session[:user_id] has a value, !!session[:user_id] returns true
    # `!!' means two `not's
    # a value = true  --not-> false --not-> true
    # nil     = false --not-> true  --not-> false

    !!current_user
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find session[:user_id]
  end

  def authenticate
    return if logged_in?
    redirect_to root_url, alert: 'ログインしてください'
  end
end
