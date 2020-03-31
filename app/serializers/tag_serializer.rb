class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_many :park_tags, include_nested_attributes: :true
end
