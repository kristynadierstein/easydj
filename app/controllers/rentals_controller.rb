 class RentalsController < ApplicationController
  def new
    @rental = Rental.new
  end

  def edit
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.item = Item.find(params[:item_id])
    @rental.user = current_user
    @rental.status = 'pending'
    @rental.save
    redirect_to dashboard_path
  end

  def update
    @rental = Rental.find(params[:id])
  end

  def destroy
    @rental = Rental.find(params[:id])
    @rental.destroy
    redirect_to dashboard_path
  end

  private

  def rental_params
    params.require(:rental).permit(:start_date, :end_date, :status)
  end
end
