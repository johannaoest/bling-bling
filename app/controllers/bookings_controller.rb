class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show delete] 

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.bed = Bed.find(params[:bed_id])
    @booking.total_price = @booking.bed.price * @booking.duration
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @booking.destroy
    redirect_to beds_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date, :duration)
  end
end
