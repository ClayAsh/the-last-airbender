class AirbenderService 

  def self.conn
    Faraday.new(url:'https://last-airbender-api.herokuapp.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_nation_characters(nation)
    json = conn.get('/api/v1/characters') do |f|
      f.params['affiliation'] = nation
    end 
    parse_json(json)
  end
end
