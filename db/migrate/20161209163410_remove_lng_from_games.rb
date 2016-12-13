class RemoveLngFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :lng
  end
end
