class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :park_id
  belongs_to :user, include_nested_attributes: :false
  belongs_to :park, include_nested_attributes: :false
end
