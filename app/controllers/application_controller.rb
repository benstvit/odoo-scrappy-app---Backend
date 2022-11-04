class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def response_to_json(options)
    options = JSON.parse(options) # Deserialize to access keys
    test = render json: {
      data: options["data"],
      success: options["data"].present?,
      message: ''
    }
  end

  def record_not_found
    render json: 'Nothing’s here', status: :not_found
  end
end
