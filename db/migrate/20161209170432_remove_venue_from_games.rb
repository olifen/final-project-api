class RemoveVenueFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :venue
  end
end
