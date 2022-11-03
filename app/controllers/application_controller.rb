class ApplicationController < ActionController::API
  include JWTSessions::RailsAuthorization

  rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def current_user
    @current_user ||= User.find(payload['user_id'])
  end

  def record_not_found
    render json: 'Nothing’s here', status: :not_found
  end

  def not_authorized
    render json: { error: 'You are not authorized to do this action' }, status: :unauthorized
  end
end
