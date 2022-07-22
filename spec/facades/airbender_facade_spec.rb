require 'rails_helper'

RSpec.describe AirbenderFacade do 
  let!(:characters) { AirbenderFacade.nation_characters('Fire Nation')}
  it 'creates poro for nation characters' do 
    expect(characters.first).to be_a(Member) 
  end
end