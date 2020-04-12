class Park < ApplicationRecord
    has_many :reviews
    has_many :favorites
    has_many :park_tags
    has_many :users, through: :reviews
    has_many :tags, through: :park_tags
    belongs_to :creator, :class_name => "User" 
end
