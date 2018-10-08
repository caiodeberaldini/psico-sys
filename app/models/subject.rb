class Subject < ApplicationRecord
    has_one :apostille
    has_many :materials
    has_many :teachers
end
