class Administrator < ApplicationRecord
    has_many :users, as: :role, dependent: :destroy
end
