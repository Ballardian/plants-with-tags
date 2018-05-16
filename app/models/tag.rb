class Tag < ApplicationRecord
  has_many :plants_tags, dependent: :destroy
  has_many :plants, through: :plants_tags
end
