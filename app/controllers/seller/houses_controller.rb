class Seller::HousesController < ApplicationController
  def index
    @houses = current_seller.houses
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    if @house.save
      flash[:notice] ='物件を新規登録しました'
      redirect_to seller_houses_path(@house)
    else
      render :new
    end
  end

  def edit
    @house = House.find(params[:id])
    @photo = Photo.new
  end

  def update
    @house = House.find(params[:id])
    if @house.update(house_params)
      redirect_to seller_houses_show(@house)
      flash[:notice] ='物件情報を更新しました'
    else
      render :edit
  end
  end

  def destroy
  end

  private
  def house_params
    params.require(:house).permit(:name, :zip_code, :address, :land_area, :building_area, :old, :price, :category, :sales_status, :image_id )
  end
end
