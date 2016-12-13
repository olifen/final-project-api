class RemovePhoneNumberFromVenue < ActiveRecord::Migration[5.0]
  def change
    remove_column :venues, :phone_number
  end
end
