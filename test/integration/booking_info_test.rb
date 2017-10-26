require 'test_helper'

class BookingInfoTest < ActionDispatch::IntegrationTest

    test "booking should work" do 
    assert_difference 'Booking.count', 1 do
      post bookings_path, params: {booking: {
        flight_id: 1, passengers_attributes: { 
          "0" => {name: "tester", email: "tester@gmail.com"}}}}
    end
  end

end
