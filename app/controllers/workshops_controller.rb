class WorkshopsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = " \
        workshops.title @@ :query \
        OR workshops.description @@ :query \
        OR workshops.category @@ :query \
        OR workshops.equipment @@ :query \
        OR workshops.address @@ :query "
      @workshops = Workshop.where(sql_query, query: "%#{params[:query]}%")
    else
      @workshops = Workshop.order("created_at DESC").all
    end
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
      redirect_to workshop_path(@workshop)
    else
      render :new
    end
  end

  def requests
    @requests = []
    current_user.workshops.each do |workshop|
      workshop.bookings.each do |booking|
        @requests.push(booking)
      end
    end
  end

  private

  def workshop_params
    params.require(:workshop).permit(:title, :address, :description, :availability, :category, :equipment, photos: [])
  end
end

