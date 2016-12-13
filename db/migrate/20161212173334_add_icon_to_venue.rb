class AddIconToVenue < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :icon, :string
  end
end
