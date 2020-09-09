class Buyer::SearchesController < ApplicationController
  def search
  	@q = House.search(search_params)
    @houses = @q.result(distinct: true)
  end

  private
  def search_params
    params.require(:q).permit!
  end
end
