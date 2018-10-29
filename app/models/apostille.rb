class Apostille < ApplicationRecord
    belongs_to :subject, foreign_key: :subjects_id
end
