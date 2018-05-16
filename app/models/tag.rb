class Tag < ApplicationRecord
  has_many :plants_tags
  has_many :plants, through: :plants_tags
end
