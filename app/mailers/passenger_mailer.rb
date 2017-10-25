class PassengerMailer < ApplicationMailer

	def thank_you_email(passenger)
		@passenger = passenger

		mail to: passenger.email, subject: "Flight Details" 
	end 

end
