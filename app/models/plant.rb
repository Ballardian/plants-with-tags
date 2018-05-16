class Plant < ApplicationRecord
  belongs_to :garden # adds a presence validation on the garden_id foreign key
  has_many :plants_tags
  has_many :tags, through: :plants_tags
  validates :name, presence: true
end
