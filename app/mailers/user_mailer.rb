class UserMailer < ApplicationMailer

	def welcome_email()
		mail(to: 'r.kenda94@gmail.com', subject: 'Welcome')
	end
end
