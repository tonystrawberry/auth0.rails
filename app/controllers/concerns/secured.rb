module Secured
  extend ActiveSupport::Concern

  included do
    before_action :logged_in_using_omniauth?
  end

  # To display the user's profile, your application should provide a protected route.
  # You can use a controller concern to control access to routes.
  def logged_in_using_omniauth?
    redirect_to root_url unless session[:userinfo].present?
  end
end
