class BookingsController < ApplicationController
  def create
    @receptacle = Receptacle.find(params[:receptacle_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.receptacle = @receptacle
    if @booking.save
      redirect_to receptacle_path(@receptacle), notice: "Your booking was a success!"
    else
      render "receptacles/show"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :receptacle_id)
  end
end
