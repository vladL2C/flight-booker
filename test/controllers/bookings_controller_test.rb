require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  

  test "should get new booking path" do 
    get bookings_path 
    assert_response :success
  end
  

end
