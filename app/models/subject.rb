class Subject < ApplicationRecord
    has_one :apostille, dependent: :delete
    has_many :materials, dependent: :delete
end
