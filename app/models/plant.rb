class Plant
    attr_accessor :id, :common_name, :slug, :scientific_name, :image_url

    def initialize
    end

    def self.new_from_search(query)
        new_plant = self.new
        result = TrefleConnection.search(query)[0]

        new_plant.id = result["id"]
        new_plant.common_name = result["common_name"]
        new_plant.slug = result["slug"]
        new_plant.scientific_name = result["scientific_name"]
        new_plant.image_url = result["image_url"]
        new_plant
    end

    def self.find_from_id(id)
        new_plant = self.new
        result = TrefleConnection.id(id)

        new_plant.id = result["id"]
        new_plant.common_name = result["common_name"]
        new_plant.slug = result["slug"]
        new_plant.scientific_name = result["scientific_name"]
        new_plant.image_url = result["image_url"]
        new_plant
    end

end