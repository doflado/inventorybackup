class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json

    def respond_with(resource, opts = {})
        register_success && return if resource.persisted?
        
        register_failed
    end

    def register_success
        render json: {data: resource, message: "Signed Up Successfully"}
    end

    def register_failed
        render json: {message: "Something went wrong."}
    end
end