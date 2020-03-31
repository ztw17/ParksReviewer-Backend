class ParkTagSerializer < ActiveModel::Serializer
  attributes :id, :park_id, :user_id
  belongs_to :tag, include_nested_attributes: :true
  belongs_to :park, include_nested_attributes: :true
end
