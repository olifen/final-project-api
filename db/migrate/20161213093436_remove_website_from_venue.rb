class RemoveWebsiteFromVenue < ActiveRecord::Migration[5.0]
  def change
    remove_column :venues, :website
  end
end
