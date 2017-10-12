class BookingsController < ApplicationController
 
  def new
  @number = params[:passenger].to_i
  @flight = params[:flight_id] 
  @booking = Booking.new
  @booking.passengers.build
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save 
      flash[:success] = "You have booked the flight"
      redirect_to booking_url(@booking)
    else
      flash.now[:warning] = "try again"
      render 'new'
    end   

  end  

  def show 
  end

  private
  
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id,:name,:email])
  end 

end
