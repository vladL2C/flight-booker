require 'test_helper'

class FlightTest < ActiveSupport::TestCase

  def setup
    @flight = Flight.new(date: "2017-10-13 20:20:21",
                          duration: 3)
  end

  test "formats the date" do 
    assert_equal @flight.date_formatted, "Friday, Oct 13"
  end

  test "duration formatted" do 
    assert_equal @flight.duration_format, "3:00 hours"
  end

  test "test plural in duration if hour is 1" do 
    @flight = Flight.new(duration: 1)
    assert_equal @flight.duration_format, "1:00 hour"
  end    
	
end
