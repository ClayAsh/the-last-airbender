class SearchController < ApplicationController 
  def index 
    @member = AirbenderFacade.nation_characters(params[:nation])
  end
end