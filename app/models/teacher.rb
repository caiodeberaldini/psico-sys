class Teacher < ApplicationRecord
    has_many :users, as: :role, dependent: :destroy
end
