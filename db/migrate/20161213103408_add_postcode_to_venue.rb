class AddPostcodeToVenue < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :postcode, :string
  end
end
