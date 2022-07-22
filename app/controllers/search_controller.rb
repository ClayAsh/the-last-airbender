class SearchController < ApplicationController 
  def index 
    @members = AirbenderFacade.nation_characters(params[:nation])
    @member_count = AirbenderFacade.characters_count(params[:nation])
  end
end