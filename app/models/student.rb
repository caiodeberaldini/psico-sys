class Student < ApplicationRecord
    has_many :users, as: :role, dependent: :destroy
    before_save :isBlank

    def isBlank
        if self.name.blank? or self.cpf.blank? or self.cell_phone.blank? or self.address.blank? or self.city.blank? or self.state.blank? or self.scholarship.blank? or self.scholarship_need.blank? or self.situation.blank? or self.email.blank? or self.classe.blank?
            self.name = nil
            self.cpf = nil
            self.cell_phone = nil
            self.address = nil
            self.city = nil
            self.state = nil
            self.scholarship = nil
            self.scholarship_need = nil
            self.situation = nil
            self.email = nil
            self.classe = nil
        end
    end
end
