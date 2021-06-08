class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show delete]

  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bed = Bed.find(params[:bed_id])
    @booking.total_price = @booking.bed.price * @booking.duration

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'new'
    end
  end

  def show
  end

  def delete
    @booking.destroy
    redirect_to beds_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :duration)
  end
end
