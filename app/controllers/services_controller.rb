class ServicesController < ApplicationController

  def index
    @services = Service.all
    render json: @services, status: :ok
  end

    def show
    @service = Service.find(params[:id])

    if @service
      render json: @service, except: [:created_at, :updated_at]
    else
      render json: {error: "Service not found"}, status: :not_found
    end
  end
end
