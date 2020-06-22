class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :password, :created_at
  has_many :reviews, include_nested_attributes: :false
  has_many :parks, include_nested_attributes: :false
  has_many :favorites, include_nested_attributes: :false
end