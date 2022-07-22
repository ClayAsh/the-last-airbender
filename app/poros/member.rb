class Member 
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo

  def initialize(attributes)
    # require 'pry'; binding.pry
    @name = attributes[:name]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
    @photo = attributes[:photoUrl]
  end
end