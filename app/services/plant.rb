class Plant

    def initialize(query)
        JSON.parse(TrefleConnection.search(query)[0])
    end

end