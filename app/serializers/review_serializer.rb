class ReviewSerializer < ActiveModel::Serializer
  # include Rails.application.routes.url_helpers

  attributes :id, :content, :visit_date, :rating, :park, :user
  belongs_to :user, include_nested_attributes: :false
  belongs_to :park, include_nested_attributes: :false

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