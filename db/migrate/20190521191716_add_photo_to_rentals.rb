class AddPhotoToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :photo, :string
  end
end
