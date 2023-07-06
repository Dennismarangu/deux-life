class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    render json: @bookings
  end

  def show
    @booking = set_booking
    if @booking
      render json: @booking
    else
      render json: { error: "Oops! Booking not found!" }, status: :not_found
    end
  end

  def create
    @booking = Booking.create(booking_params)
      if @booking.valid?
        render json: @booking
      else
        render json: @booking.errors, status: :unprocessable_entity
      end
  end

  def update
    @booking = set_booking
    if @booking
        @booking.update(booking_params)
        if @booking.valid?
          render json: @booking
        else
          render json: @booking.errors, status: :unprocessable_entity
        end   
    else
      render json: { error: "Oops! Booking not found!" }, status: :not_found
    end
  end

  def destroy
    @booking = set_booking
    if @booking
      @booking.destroy
      head :no_content
    else
      render json: { error: "Oops! Booking not found!" }, status: :not_found
    end
  end

  private

  def set_booking
    Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:customer_id, :room_id, :check_in_date, :check_out_date)
  end

end
