class ApplicationController < ActionController::Base
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_value
# skip_before_action :verify_authenticity_token
skip_before_action :verify_authenticity_token
    def unprocessable_value(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
