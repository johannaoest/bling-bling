class ReviewsController < ApplicationController
  def create
    @bed = Bed.find(params[:bed_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.bed = @bed
    @booking = Booking.new
    authorize @review
    if @review.save
      redirect_to bed_path(@bed)
    else
      render "beds/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment)
  end
end
