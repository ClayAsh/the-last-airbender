require 'rails_helper'

RSpec.describe MemberCount do 
  let!(:character_count) { AirbenderFacade.characters_count('Fire Nation')}

  it 'gets count of characters' do 
    expect(character_count.char_count).to eq(20)
  end
end