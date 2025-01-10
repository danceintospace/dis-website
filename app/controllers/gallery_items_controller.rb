class GalleryItemsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  def index
    @gallery_items = GalleryItem.all
  end

  def new
    @gallery_item = GalleryItem.new
  end

  def create
    @gallery_item = GalleryItem.new(gallery_item_params)
    if @gallery_item.save
      redirect_to gallery_items_path, notice: 'Image added successfully!'
    else
      render :new
    end
  end

  private

  def gallery_item_params
    params.require(:gallery_item).permit(:title, :year, :image_url)
  end
end
