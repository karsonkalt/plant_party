class SpeciesController < ApplicationController

    def show
        @species = Species.find_from_id(params["id"])
    end
end
