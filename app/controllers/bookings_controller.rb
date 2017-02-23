class BookingsController < ApplicationController
  def new
    @user = User.find(params[:id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.sitter = @user.sitter
  end

  def create
    @booking = Booking.new(booking_params)
    # @booking.set_price
    if @booking.save
      redirect_to user_path(current_user), notice: "Booking created!"
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date,
                                       :user_id, :sitter_id, :price)
  end
end
