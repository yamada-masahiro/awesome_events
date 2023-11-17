class ApplicationController < ActionController::Base
  helper_method :logged_in?

  private

  def logged_in?
    # If session[:user_id] has a value, !!session[:user_id] returns true
    # `!!' means two `not's
    # a value = true  --not-> false --not-> true
    # nil     = false --not-> true  --not-> false

    !!session[:user_id]
  end
end
