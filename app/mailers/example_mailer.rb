class ExampleMailer < ActionMailer::Base
	default from: "rc.araripe3@gmail.com"
	
	def sample_email(matricula)
		@matricula = matricula
		mail(to: @matricula.email, subject: 'Matrícula')
	end
end
