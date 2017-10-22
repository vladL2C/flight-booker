require 'test_helper'

class BookingTest < ActiveSupport::TestCase
	def setup
		@booking = Booking.new(flight_id: 1)
	end

	test "flight_id should be present" do 
		@booking = Booking.new(flight_id: "")
		assert_not @booking.valid?
	end  

end
