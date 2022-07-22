require 'rails_helper'

RSpec.describe AirbenderFacade do 
  let!(:characters) { AirbenderFacade.nation_characters('Fire Nation')}
  let!(:character_count) { AirbenderFacade.characters_count('Fire Nation')}
  it 'creates poro for nation characters' do 
    expect(characters.first).to be_a(Member) 
  end

  it 'creates count for characters' do 
    expect(character_count.char_count).to eq(20) 
  end
end