# Preview all emails at http://localhost:3000/rails/mailers/appointment
class AppointmentPreview < ActionMailer::Preview
	def sample_mail_preview
    	Appointment.sample_email(User.first)
  	end
end
