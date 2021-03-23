class Plant < ApplicationRecord
    has_many :user_plants
    has_many :plant_waterings
    has_many :users, through: :user_plants

    def last_watered
        self.plant_waterings.order("created_at").last.created_at.to_date
    end

    def last_watered_days_ago
        today = Date.today
        last_watered = self.last_watered
        (today - last_watered).to_i
    end

    def needs_to_be_watered_in_days
        self.days_to_be_watered - self.last_watered_days_ago
    end

    def species_obj
        Species.find_by_id(self.species)
    end

end
