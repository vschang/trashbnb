class BookingsController < ApplicationController
  def create
    @receptacle = Receptacle.find(params[:receptacle_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.receptacle = @receptacle
    @booking.total_price = total_price

    if @booking.save
      redirect_to receptacle_path(@receptacle), notice: "You have created a booking!"
    else
      render "receptacles/show", alert: "A problem has occurred while processing your booking"
    end
  end

  private

  def total_price
    days = (@booking.end_date - @booking.start_date).to_i
    (days * @receptacle.price_per_day).to_i
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :receptacle_id)
  end
end
