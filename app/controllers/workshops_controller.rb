class WorkshopsController < ApplicationController
  def index
    @workshops = Workshop.all
  end

  def show
    @workshop = Workshop.find(params[:id])
    @booking = Booking.new
    @booking.workshop = @workshop
  end

  def new
    @workshop = Workshop.new
  end

  def create
    @workshop = Workshop.new(workshop_params)
    @workshop.user = current_user
    if @workshop.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def workshop_params
    params.require(:workshop).permit(:title, :address, :description, :availability, :category, :equipment, photos: [])
  end
end
