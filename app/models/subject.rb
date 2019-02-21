class Subject < ApplicationRecord
    has_one :apostille, dependent: :destroy
    has_many :materials, dependent: :destroy
end
