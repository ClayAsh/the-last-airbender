class MemberCount 
  attr_reader :char_count 
  def initialize(attributes)
    @char_count = attributes.count
  end
end