class AirbenderFacade 
  def self.nation_characters(nation)
    data = AirbenderService.get_nation_characters(nation)
    data.map do |character|
    Member.new(character)
    end
  end
end