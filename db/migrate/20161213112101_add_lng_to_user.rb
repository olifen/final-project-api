class AddLngToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lng, :string
  end
end
