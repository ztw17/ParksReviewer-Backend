class Tag < ApplicationRecord
    has_many :park_tags
    has_many :parks, through: :park_tags
end
