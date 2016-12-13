class AddPriceToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :price, :string
  end
end
