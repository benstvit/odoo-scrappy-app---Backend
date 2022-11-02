# frozen_string_literal: false

class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def record_not_found
    render json: 'Nothing’s here', status: :not_found
  end
end
