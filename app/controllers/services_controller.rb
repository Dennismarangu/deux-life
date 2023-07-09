class ServicesController < ApplicationController
  
  def index
    @services = Service.all
    render json: @services, status: :ok
  end

  def show
    @service = Service.find(params[:id])

    if @service
      render json: @service, only: [:id, :service_name, :service_cost, :service_description, :head_of_service]
    else
      render json: { error: "Service not found" }, status: :not_found
    end
  end
end
