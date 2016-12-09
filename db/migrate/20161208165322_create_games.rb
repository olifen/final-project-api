class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.references :user, foreign_key: true
      t.string :address
      t.float :lat
      t.float :lng
      t.integer :no_of_places
      t.time :start_time
      t.time :end_time
      t.date :date

      t.timestamps
    end
  end
end
