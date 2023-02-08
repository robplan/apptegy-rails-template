class ApplicationController < ActionController::API
  include ApptegyAuth::Controller

  rescue_from ApptegyAuth::UnauthenticatedError, with: :unauthorized

  private

  def sign_in(auth_object)
    Current.user = auth_object
  end

  def unauthorized
    render status: :unauthorized
  end
end
