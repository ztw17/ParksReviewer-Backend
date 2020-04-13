class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email, :password, :image, :created_at
  has_many :reviews, include_nested_attributes: :true
  has_many :parks, include_nested_attributes: :true
  has_many :favorites, include_nested_attributes: :true
end