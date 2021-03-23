class Species
    attr_accessor :id, :common_name, :slug, :scientific_name, :image_url, :year, :family_common_name

    def initialize
    end

    def self.new_from_search(query)
        result = TrefleConnection.search(query)
        result.map do |item|
            new_plant = self.new
            new_plant.id = item["id"]
            new_plant.common_name = item["common_name"]
            new_plant.slug = item["slug"]
            new_plant.scientific_name = item["scientific_name"]
            new_plant.image_url = item["image_url"]
            new_plant.year = item["year"]
            new_plant.family_common_name = item["family_common_name"]
            new_plant
        end
    end

    def self.find_from_id(id)
        new_plant = self.new
        result = TrefleConnection.id(id)

        new_plant.id = result["id"]
        new_plant.common_name = result["common_name"]
        new_plant.slug = result["slug"]
        new_plant.scientific_name = result["scientific_name"]
        new_plant.image_url = result["image_url"]
        new_plant.year = result["year"]
        new_plant.family_common_name = result["family_common_name"]
        new_plant
    end

end