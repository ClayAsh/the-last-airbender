require 'rails_helper'

RSpec.describe AirbenderService do 
  let!(:characters) { AirbenderService.get_nation_characters('Fire Nation')}
  it 'establishes connection to get nation characters' do 
    expect(characters).to be_all(Hash)
  end
end