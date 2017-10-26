require 'test_helper'

class BookingInfoTest < ActionDispatch::IntegrationTest

    def setup
      ActionMailer::Base.deliveries.clear
    end 

    test "test valid booking" do 
      assert_difference 'Booking.count', 1 do
        post bookings_path, params: {booking: {
          flight_id: 1, passengers_attributes: { 
            "0" => {name: "tester", email: "tester@gmail.com"}}}}
      end
      follow_redirect!
      assert_equal 1, ActionMailer::Base.deliveries.size
      assert_template 'bookings/show'
    end

    test "test invalid booking" do 
      assert_no_difference 'Booking.count' do
        post bookings_path, params: {booking: {
          flight_id: "", passengers_attributes: { 
            "0" => {name: "", email: ""}}}}
      end
      assert_not flash.empty?
      assert_template 'bookings/new'
    end

end
