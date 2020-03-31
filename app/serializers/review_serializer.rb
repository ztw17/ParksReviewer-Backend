class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :visit_date, :rating, :park_id, :user_id
  belongs_to :user, include_nested_attributes: :true
  belongs_to :park, include_nested_attributes: :true
end