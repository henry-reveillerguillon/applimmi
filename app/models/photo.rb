class Photo < ApplicationRecord
  belongs_to :user
  has_many :photos_tags
  has_many :tags, through: :photos_tags

  default_scope -> { order(created_at: :desc) }
end
