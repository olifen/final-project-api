class AddPricefloatToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :price, :float
  end
end
