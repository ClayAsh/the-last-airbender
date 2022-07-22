class AirbenderFacade 
  def self.nation_characters(nation)
    data = AirbenderService.get_nation_characters(nation)
    data.map do |character|
    Member.new(character)
    end
  end

  def self.characters_count(nation)
    data = AirbenderService.get_nation_characters(nation)
    MemberCount.new(data)
  end
end