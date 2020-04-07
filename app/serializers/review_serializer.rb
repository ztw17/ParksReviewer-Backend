class ReviewSerializer < ActiveModel::Serializer
  # include Rails.application.routes.url_helpers

  attributes :id, :content, :visit_date, :rating, :park_id, :user_id
  belongs_to :user, include_nested_attributes: :true
  belongs_to :park, include_nested_attributes: :true

  # def image
  #   return unless object.image.attached?

  #   object.image.blob.attributes
  #     .slice('filename', 'byte_size')
  #     .merge(url: image_url)
  #     .tap { |attrs| attrs['name'] = attrs.delete('filename') }
  # end

  # def image_url
  #   url_for(object.image)
  # end
end