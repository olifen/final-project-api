class AddWebsiteToVenue < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :website, :string
  end
end
