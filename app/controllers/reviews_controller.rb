class ReviewsController < ApplicationController
  def create
    booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = booking
    @review.user = current_user

    if @review.save
      redirect_to boat_path(@review.booking.boat)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
