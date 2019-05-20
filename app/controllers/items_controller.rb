class ItemsController < ApplicationController
  before_action :set_items, only: [:show, :destroy]

  def index
    @items = Item.all
  end

  def create
  end

  def new
  end

  def show
  end

  def destroy
  end

  private

  def set_restaurant
    @item = Item.find(params[:id])
  end
end
