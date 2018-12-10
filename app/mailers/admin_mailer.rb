class AdminMailer < ActionMailer::Base
	default to: -> {Administrator.pluck(:email)},
			from: 'cursinhopsico.matriculas@gmail.com'
			
	def nova_matricula(matricula)
		@matricula = matricula
		mail(subject: "Nova matrícula: #{@matricula.name}")
	end
end
