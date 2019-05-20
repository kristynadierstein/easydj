class ItemsController < ApplicationController
  def index
  end

  def create
  end

  def new
  end

  def show
    @item = Item.find(params[:id])
  end

  def destroy
  end
end
