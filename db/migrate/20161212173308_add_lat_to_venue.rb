class AddLatToVenue < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :lat, :float
  end
end
