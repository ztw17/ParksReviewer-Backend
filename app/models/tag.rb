class Tag < ApplicationRecord
    has_many :parks, through: :park_tags
end
