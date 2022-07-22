require 'rails_helper'

RSpec.describe 'welcome index' do 
  xit 'allows user to search by members by nation' do 
    # visit root_path

    select 'Fire Nation'
    click_button "Search for Members"

    expect(current_path).to eq('/search')
    expect(page).to have_content('Total number: 20')
  end
end