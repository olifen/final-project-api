class CreateJoinTableVenuesGames < ActiveRecord::Migration[5.0]
  def change
    create_join_table :venues, :games do |t|
      # t.index [:venue_id, :game_id]
      # t.index [:game_id, :venue_id]
    end
  end
end
