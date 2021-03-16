class TrefleConnection

    # https://trefle.io/api/v1/plants/search?token=YOUR_TREFLE_TOKEN&q=coconut

    include HTTParty
    token = 'I5Y1VynV0FjlAP03uX8ZVDfUi1zeTqYiDODOgyBSi-0'
    base_uri "https://trefle.io/api/v1/plants/search?token=#{token}&q="



    def self.search(query)
        response = self.get(query.parameterize)
        response["data"]
    end

end