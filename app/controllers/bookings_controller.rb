class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    render json: @booking
  end
end
