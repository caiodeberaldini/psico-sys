class Student < ApplicationRecord
    has_many :users, as: :role
end
