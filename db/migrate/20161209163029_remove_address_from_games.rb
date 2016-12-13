class RemoveAddressFromGames < ActiveRecord::Migration[5.0]
  def change
    remove_column :games, :address
  end
end
