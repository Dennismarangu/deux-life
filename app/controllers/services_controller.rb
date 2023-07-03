class ServicesController < ApplicationController

  def index
    @services = Service.all
    # Add any additional logic needed
  end

    def show
    @service = Service.find(params[:id])
    # Add any additional logic needed
  end
end
