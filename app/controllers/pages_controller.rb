class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @rentals = current_user.rentals
    @items = current_user.items
  end
end
