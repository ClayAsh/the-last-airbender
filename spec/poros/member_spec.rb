require 'rails_helper'

RSpec.describe Member do 
  let(:member) { AirbenderFacade.nation_characters('Fire Nation').first}
  it 'has attributes' do 
    expect(member.name).to eq("Chan (Fire Nation admiral)")
    expect(member.allies).to eq(["Ozai"])
    expect(member.enemies).to eq(["Earth Kingdom"])
    expect(member.affiliation).to eq("Fire Nation Navy")
    expect(member.photo).to eq(nil)
  end
end