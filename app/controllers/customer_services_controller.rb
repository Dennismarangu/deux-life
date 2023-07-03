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

   # PATCH /customer_services/:id
  def update
    if @customer_service.update(customer_service_params)
      render json: @customer_service
    else
      render json: @customer_service.errors, status: :unprocessable_entity
    end
  end

   # DELETE /customer_services/:id
  def destroy
    @customer_service.destroy
    head :no_content
  end

   private

  def set_customer_service
    @customer_service = CustomerService.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: 'Customer service not found' }, status: :not_found
  end

   def customer_service_params
    params.permit(:customer_id, :service_id, :request_date, :quantity)
  end

   def record_not_found
    render json: { error: 'Record not found' }, status: :not_found
  end

end
