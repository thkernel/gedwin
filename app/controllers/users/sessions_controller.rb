# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  #skip_before_filter :verify_authenticity_token, :only => :create
  #skip_before_action :verify_authenticity_token, :only => :create
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def after_update_path_for(resource)
    dashboard_path
  end

  def after_sign_in_path_for(resource)
   
    stored_location_for(resource) || dashboard_path
 

  end
end
