class Teacher < ApplicationRecord
    has_many :users, as: :role, dependent: :destroy
    before_save :isBlank

    def isBlank
        if self.name.blank? or self.cpf.blank? or self.address.blank? or self.city.blank? or self.state.blank? or self.cell_phone.blank? or self.disciplina.blank? or self.email.blank?
           self.name = nil
           self.cpf = nil
           self.address = nil
           self.city = nil
           self.state = nil
           self.cell_phone = nil
           self.disciplina = nil
           self.email = nil
        end 
    end
end
