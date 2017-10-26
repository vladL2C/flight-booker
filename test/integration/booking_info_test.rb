require 'test_helper'

class BookingInfoTest < ActionDispatch::IntegrationTest

  test "valid booking" do
    assert_difference 'Booking.count' do 
      post bookings_path, params: { booking: { passengers_attributes: { "0" =>{name: "vlad", email: "vlad@hotmail.co.nz"}}, flight_id: 3}}
    end
  end 

end
