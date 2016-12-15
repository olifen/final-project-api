# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
	username: "olifen",
	email: "oli.fen@hotmail.com",
	first_name: "Oliver",
	last_name: "Fennelly",
  password: "password",
  password_confirmation: "password",
	location: "Wimbledon, London, United Kingdom",
	lat: "51.41833889999999",
	lng: "-0.22062879999998586",
	image: "https://scontent-lhr3-1.xx.fbcdn.net/v/t1.0-9/13557953_10157124724360422_7553889345954849621_n.jpg?oh=defee5ad8487134cec96c15f6b0f4fe7&oe=58F50621",
	phone_number: "07734469391"
},{
  username: "lio",
	email: "lio.mes@hotmail.com",
	first_name: "Lionel",
	last_name: "Messi",
  password: "password",
  password_confirmation: "password",
	location: "Barcelona",
	lat: "",
	lng: "",
	image: "",
	phone_number: "07734469391"
}])

Venue.create!([{
  name: "Furzedown Recreation Centre",
  address: "Ramsdale Rd, London SW17 9BP"
},{
  name: "Chestnut Grove School",
  address: "45 Chestnut Grove, London SW12 8JZ"
},{
  name: "Aspire Centre",
  address: "337 Merton Rd, London SW18 5JU"
}])

# Game.create!([{
#
# }])


# t.string   "name"
# t.integer  "venue_id"
# t.integer  "user_id"
# t.integer  "no_of_places"
# t.time     "start_time"
# t.time     "end_time"
# t.date     "date"
