class AddLatToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lat, :string
  end
end
