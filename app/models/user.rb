class User < ApplicationRecord
    # has_one_attached :image
    # has_secure_password
    has_many :reviews
    has_many :favorites
    has_many :parks, through: :reviews
    has_many :park_tags, through: :parks
    has_many :tags, through: :park_tags
    has_many :created_parks, :class_name => "Park", :foreign_key => "creator_id"
    alias reviewed_parks parks
end