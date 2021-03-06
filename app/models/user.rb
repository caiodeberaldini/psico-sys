class User < ApplicationRecord
    belongs_to :role, polymorphic: true
    has_secure_password

    validates :username, uniqueness: true
end
