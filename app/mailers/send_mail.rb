class SendMail < ActionMailer::Base
  default to:  "cvandenb@gmail.com"
  default from: "cvandenb@gmail.com"
  layout 'send_emails'

	def send_emails(body, interested)
		@subject = interested
		@body = body
		mail(
			:subject => @subject, 
			:body => @body,
			:template_path => 'send_emails',
			:template_name => 'send_emails')
	end

end
