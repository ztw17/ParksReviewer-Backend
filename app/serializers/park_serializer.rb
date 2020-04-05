class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :state, :description, :weather, :longitude, :latitude, :image, :creator_id
  has_many :tags, include_nested_attributes: :true
  # has_many :users, include_nested_attributes: :true
  has_many :reviews, include_nested_attributes: :true
end
