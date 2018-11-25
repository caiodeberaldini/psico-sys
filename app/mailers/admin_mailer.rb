class AdminMailer < ActionMailer::Base
	default to: -> {Administrator.pluck(:email)},
			from: 'psico.cursinho.teste@gmail.com'
			
	def nova_matricula(matricula)
		@matricula = matricula
		mail(subject: "Nova matrícula: #{@matricula.name}")
	end
end
