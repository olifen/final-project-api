class RemoveIconFromVenue < ActiveRecord::Migration[5.0]
  def change
    remove_column :venues, :icon
  end
end
