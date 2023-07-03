class CustomerServicesController < ApplicationController

  before_action :set_customer_service, only: [:show, :update, :destroy]

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::ParameterMissing, with: :parameter_missing

   # GET /customer_services
  def index
    customer_services = CustomerService.all
    render json: customer_services
  end

    # GET /customer_services/:id
  def show
    render json: @customer_service
  end

   # POST /customer_services
  def create
    @customer_service = CustomerService.new(customer_service_params)

    # Fetch the service price based on service_id from Services table
    service_price = 10.0 

    # Calculate total_price
    @customer_service.total_price = params[:quantity] * service_price

    if @customer_service.save
      render json: @customer_service, status: :created
    else
      render json: @customer_service.errors, status: :unprocessable_entity
    end
  end

end
