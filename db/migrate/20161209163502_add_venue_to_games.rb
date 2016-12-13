class AddVenueToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :venue, :string
  end
end
