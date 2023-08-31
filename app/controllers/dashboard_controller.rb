class DashboardController < ApplicationController
  include Secured

  # After you have created the secured controller concern, include it in any controller that requires a logged in user.
  # You can then access the user from the session session[:userinfo].
  def show
    # session[:userinfo] was saved earlier on Auth0Controller#callback
    @user = session[:userinfo]
  end
end
