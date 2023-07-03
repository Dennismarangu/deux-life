class CustomerServicesController < ApplicationController

  before_action :set_customer_service, only: [:show, :update, :destroy]

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::ParameterMissing, with: :parameter_missing

   # GET /customer_services
  def index
    customer_services = CustomerService.all
    render json: customer_services
  end

end
