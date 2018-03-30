class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
include ApplicationHelper

private


def set_cart!
  @current_cart = current_user.current_cart
end

end
