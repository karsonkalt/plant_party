class PlantWatering < ApplicationRecord
  belongs_to :plant

  def date_of_watering
    self.created_at.strftime("%B %d, %Y")
  end
end
