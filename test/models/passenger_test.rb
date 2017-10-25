require 'test_helper'

class PassengerTest < ActiveSupport::TestCase
	def setup
		@passenger = Passenger.new(name: "vlad", 
															email: "vlad@hotmail.co.nz")
	end

	test "name should be present" do 
		@passenger = Passenger.new(name: "")
		assert_not @passenger.valid?
	end

	test "email should be present" do 
		@passenger = Passenger.new(email: "")
		assert_not @passenger.valid?
	end

end
