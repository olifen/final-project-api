class AddPhoneNumberToVenue < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :phone_number, :string
  end
end
