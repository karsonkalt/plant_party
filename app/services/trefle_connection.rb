class TrefleConnection

    # https://trefle.io/api/v1/plants/search?token=YOUR_TREFLE_TOKEN&q=coconut

    include HTTParty
    base_uri "https://trefle.io/api/v1/plants"


    def self.search(query)
        response = self.get("/search?token=I5Y1VynV0FjlAP03uX8ZVDfUi1zeTqYiDODOgyBSi-0&q=#{query.parameterize}")
        response["data"]
    end

    def self.id(id)
        response = self.get("/#{id}?token=I5Y1VynV0FjlAP03uX8ZVDfUi1zeTqYiDODOgyBSi-0")
        response["data"]
    end

end
