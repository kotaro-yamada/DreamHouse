class Buyer::HomesController < ApplicationController
  def top
  	#ransack
  	@q = House.ransack(params[:q])
    @houses = @q.result(distinct: true)
  end
end
