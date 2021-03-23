class PlantsController < ApplicationController

    def show
        @plant = Plant.find_by_id(params["id"])
    end

end
