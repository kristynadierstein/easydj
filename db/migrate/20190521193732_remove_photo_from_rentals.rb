class RemovePhotoFromRentals < ActiveRecord::Migration[5.2]
  def change
    remove_column :rentals, :photo
  end
end
