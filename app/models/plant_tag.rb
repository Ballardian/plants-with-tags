class PlantTag < ApplicationRecord
  belongs_to :plant
  belongs_to :tag
  validates :plant, uniqueness: { scope: :tag,
    message: "You can't add several times same tag" }
end
