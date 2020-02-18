class AddHotelIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :hotel_id, :integer
  end
end
