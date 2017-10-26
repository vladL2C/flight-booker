require 'test_helper'

class BookingInfoTest < ActionDispatch::IntegrationTest

    def setup
      @flight = flights(:one)
    end 

    test "test valid booking" do 
      assert_difference 'Booking.count', 1 do
        post bookings_path, params: {booking: {
          flight_id: 1, passengers_attributes: { 
            "0" => {name: "tester", email: "tester@gmail.com"}}}}
      end
      follow_redirect!
      assert_template 'bookings/show'
  end

end
