require 'rails_helper'

RSpec.describe 'search index' do 
  let!(:member) { AirbenderFacade.nation_characters('Fire Nation').first }
  it 'returns info for nations members' do 
    visit '/search'
    expect(page).to have_content("Total number: 20")
    expect(page).to have_content("Chan (Fire Nation admiral)")
    expect(page).to have_content("Ozai")
    expect(page).to have_content("Earth Kingdom")
    expect(page).to have_content("Fire Nation Navy")

  end
end
