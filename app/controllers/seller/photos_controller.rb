class Seller::PhotosController < ApplicationController
  def create
    @photo = Photo.new(photo_params)
    @photo.save
    path = Rails.application.routes.recognize_path(request.referer)
	redirect_to path
  end

  def destroy
  end 

  private
  def photo_params
    params.require(:photo).permit(:image)
  end

end
