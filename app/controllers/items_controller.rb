class ItemsController < ApplicationController
  before_action :set_items, only: [:show, :destroy]

  def index
    @items = Item.all
  end

  def show
  end

  def create
    @item = Item.new(params_item)

    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
    else
      render :new
    end
      # need to log in for it to work
  end

  def new
    @item = Item.new
  end


  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def params_item
    params.require(:item).permit(
      :location, :name, :description, :price, :condition, :deposit,
      :image_url, :delivery, :policies
    )
  end
end
