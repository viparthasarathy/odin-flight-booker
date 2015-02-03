class PassengerMailer < ActionMailer::Base
  default from: "viparthasarathy@gmail.com"

  def booking_confirmation(passenger)
  	@passenger = passenger
  	@booking = @passenger.booking
  	mail(to: "#{@passenger.name} <#{@passenger.email}>", subject: 'Thanks for booking with us!')
  end
end
