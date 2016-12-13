class AddReferencesVenueToGames < ActiveRecord::Migration[5.0]
  def change
    add_reference :games, :venue, foreign_key: true
  end
end
