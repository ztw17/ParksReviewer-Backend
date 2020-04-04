class TagSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :parks, include_nested_attributes: :true
end
