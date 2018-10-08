class Teacher < ApplicationRecord
    belongs_to :subject
    has_and_belongs_to_many :administrators
end
