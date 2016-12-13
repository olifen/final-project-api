class RemoveLatFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :lat
  end
end
