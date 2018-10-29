class Subject < ApplicationRecord
    has_one :apostille
    has_many :materials
end
