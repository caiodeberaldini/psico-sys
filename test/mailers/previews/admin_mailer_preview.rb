# Preview all emails at http://localhost:3000/rails/mailers/admin_mailer
class AdminMailerPreview < ActionMailer::Preview
	def nova_matricula_preview
		AdminMailer.nova_matricula(Matricula.first)
	end
end
