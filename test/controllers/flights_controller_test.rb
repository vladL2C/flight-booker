require 'test_helper'

class FlightsControllerTest < ActionDispatch::IntegrationTest
  

  test "should get home" do 
    get root_path 
    assert_response :success
  end

  test "should show flash if flights invalid" do 
    get flights_path, params: { flight: { departing_id: "",
                              arriving_id: "", passenger: "", date: "" }}
    assert_not flash.empty?
  end

end
