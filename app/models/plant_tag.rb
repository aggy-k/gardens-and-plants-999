class PlantTag < ApplicationRecord
  belongs_to :tag
  belongs_to :plant
  validates :tag_id, uniqueness: { scope: :plant_id }
end
