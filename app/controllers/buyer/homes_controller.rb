class Buyer::HomesController < Buyer::ApplicationController
  def top
  	#ransack
  	@q = House.ransack(params[:q])
    @houses = @q.result(distinct: true)
    @prefectures = Prefecture.all
    @cities = City.all
  end
end
