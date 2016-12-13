class RemoveRatingFromVenue < ActiveRecord::Migration[5.0]
  def change
    remove_column :venues, :rating
  end
end
