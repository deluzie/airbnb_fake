class BookingsController < ApplicationController
  def new
    @workshop = Workshop.find(params[:workshop_id])
    @booking = Booking.new
  end

  def create
    @workshop = Workshop.find(params[:workshop_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.workshop = @workshop
    if @booking.save
      redirect_to bookings_path
      flash[:notice] = "Booking request was successful!"
    else
      render :new
    end
  end

  def index
    @bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
