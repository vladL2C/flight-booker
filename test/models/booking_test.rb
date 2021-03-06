require 'test_helper'

class BookingTest < ActiveSupport::TestCase
	def setup
		@booking = Booking.new(flight_id: 1)
	end

  def accept_nested_attributes
    should accept_nested_attributes_for(:passengers)
  end 

	test "flight_id should be present" do 
		@booking = Booking.new(flight_id: "")
		assert_not @booking.valid?
	end


end
