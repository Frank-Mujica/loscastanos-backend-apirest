class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        before_action :configure_permitted_parameters, if: :devise_controller?
        rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

        private
        def record_not_found(error)
            render json: { error: error.message }, status: :not_found
        end

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(
                :sign_up, keys: [:registration, :first_name, :last_name, :rut, :email, :password, :birthdate, :region, :commune, :phone_number, :address, :admin]
            )
            devise_parameter_sanitizer.permit(
                :sign_in, keys: [:email, :password]
            )
            devise_parameter_sanitizer.permit(
                :account_update, keys: [:first_name, :last_name, :email, :password, :birthdate, :region, :commune, :phone_number, :address]
            )
        end

    rescue_from CanCan::AccessDenied do |exception|
        render json: { error: "Acceso denegado, usted no tiene permisos para realizar está acción" }, status: :forbidden 
    end

end
