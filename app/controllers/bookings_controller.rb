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
      redirect_to root_path
      flash[:notice] = "Booking request was successful!"
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:check_in, :check_out)
  end
end
