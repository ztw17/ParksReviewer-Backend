class Review < ApplicationRecord
    has_one_attached :image
    belongs_to :park
    belongs_to :user
    # has_many :park_tags, through: :parks
    # has_many :tags, through: :park_tags
end
