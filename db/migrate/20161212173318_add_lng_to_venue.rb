class AddLngToVenue < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :lng, :float
  end
end
