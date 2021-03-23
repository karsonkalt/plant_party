class PlantsController < ApplicationController

    def show
        @plant = Plant.find_from_id(params["id"])
    end
end
