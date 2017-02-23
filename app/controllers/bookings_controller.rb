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
      redirect_to booking_confirmation_path(@booking), notice: "Booking created!"
    else
      render :new
    end
  end

  def confirmation
    @booking = Booking.where(user_id:current_user.id).last
    # @booking.price = @booking.set_price(@booking.start_date, @booking.end_date)


  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date,
                                       :user_id, :sitter_id, :price)
  end
end
