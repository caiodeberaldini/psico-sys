class Subject < ApplicationRecord
    has_one :apostille, dependent: :delete_all
    has_many :materials, dependent: :delete_all
end
