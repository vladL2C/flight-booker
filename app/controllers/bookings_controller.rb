class BookingsController < ApplicationController
 
  def new
  @number = params[:passenger].to_i
  @flight = params[:flight_id]
  @booking = Booking.new
  @number.times { @booking.passengers.build }
  end

  def create
    @flight = params[:flight_id]
    @booking = Booking.new(booking_params)
    if @booking.save 
      @booking.passengers.each do |passenger|
        PassengerMailer.thank_you_email(passenger).deliver_now
      end 
      redirect_to booking_url(@booking)
    else
      @flight = params[:booking][:flight_id]
      flash.now[:warning] = "try again"
      render :new
    end   

  end  

  def show 
  end

  private
  
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id,:name,:email])
  end 

end
