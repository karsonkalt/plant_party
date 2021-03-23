class SpeciesController < ApplicationController

    def show
        @species = Species.find_by_id(params["id"])
        @users = @species.users
    end
end
