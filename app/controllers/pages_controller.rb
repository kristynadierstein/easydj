class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @booked_items = current_user.items.select do |item|
      item.rentals.size > 0
    end
    @rentals = current_user.rentals
    @items = current_user.items
  end
end
