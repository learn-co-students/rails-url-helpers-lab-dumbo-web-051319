class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # ActionController::Parameters.permit_all_parameters = true
  # protect_from_forgery with:: null_session
  # before_action :authenticate_model!
  ActionController::Parameters.permit_all_parameters = true
  protect_from_forgery with: :exception
end
