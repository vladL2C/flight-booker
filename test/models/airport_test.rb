require 'test_helper'

class AirportTest < ActiveSupport::TestCase
  def setup
    @airport = Airport.new(code: "AKL", name: "Auckland")
  end 

  test "airport formatted with code and name" do 
    assert_equal @airport.airport_name, "AKL - Auckland National Airport"
  end 
end
