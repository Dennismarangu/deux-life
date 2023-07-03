class CustomerServicesController < ApplicationController

  before_action :set_customer_service, only: [:show, :update, :destroy]

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::ParameterMissing, with: :parameter_missing

end
