class Member 
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo,
              :char_count

  def initialize(attributes)
    @name = attributes[:name]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
    @photo = attributes[:photoUrl]
  end
end